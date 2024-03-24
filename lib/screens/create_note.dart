import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_first_app/noteBookModels/note_model.dart';

 import 'package:shared_preferences/shared_preferences.dart'; 

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key, required this.onNewNoteCreated}) : super(key: key);

  final Function(Note) onNewNoteCreated;

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late SharedPreferences _prefs;

   @override
  void initState() {
    super.initState();
    _loadSharedPreferences();
  }

  Future<void> _loadSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: const TextStyle(fontSize: 28),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: bodyController,
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Your Story",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (titleController.text.isEmpty || bodyController.text.isEmpty) {
            return;
          }

          final userEmail = _prefs.getString('user_email');

          final noteData = {
            'title': titleController.text,
            'body': bodyController.text,
            'userEmail': userEmail,
            'createdAt': FieldValue.serverTimestamp(), // Timestamp for creation time
          };

          try {
            await _firestore.collection('notes').add(noteData);
            widget.onNewNoteCreated(Note.fromMap(noteData));
            Navigator.of(context).pop();
          } catch (e) {
            // Handle error
            print('Error saving note: $e');
             Navigator.of(context).pop();
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
