import 'package:flutter/material.dart';
import 'package:my_first_app/noteBookModels/note_model.dart';
import 'package:my_first_app/screens/create_note.dart';
import 'package:my_first_app/screens/widgets/note_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import Firestore

class NoteBook extends StatefulWidget {
  const NoteBook({Key? key}) : super(key: key);

  @override
  State<NoteBook> createState() => _NoteBookState();
}

class _NoteBookState extends State<NoteBook> {
  List<Note> notes = []; // Initialize notes list
  String? userEmail; // Variable to store user's email

  @override
  void initState() {
    super.initState();
    getUserEmail(); // Call function to get user's email from SharedPreferences
  }

  // Function to get user's email from SharedPreferences
  Future<void> getUserEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userEmail = prefs.getString('user_email');
    });
    // After getting user's email, fetch notes from Firestore
    fetchNotesFromFirestore();
  }

  // Function to fetch notes from Firestore based on user's email
  Future<void> fetchNotesFromFirestore() async {
    if (userEmail != null) {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance
              .collection('notes')
              .where('userEmail',
                  isEqualTo: userEmail) // Filter notes by user's email
              .get();

      List<Note> notest =
          snapshot.docs.map((doc) => Note.fromMap(doc.data())).toList();

      setState(() {
        notes = snapshot.docs.map((doc) => Note.fromMap(doc.data())).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kidor Notes"),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteCard(
              note: notes[index], index: index, onNoteDeleted: onNoteDeleted);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  CreateNote(onNewNoteCreated: onNewNoteCreated)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // Function to add newly created note to the list
  void onNewNoteCreated(Note note) {
    setState(() {
      notes.add(note);
    });
  }

  // Function to delete a note from the list
  void onNoteDeleted(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }
}
