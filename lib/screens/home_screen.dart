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

  