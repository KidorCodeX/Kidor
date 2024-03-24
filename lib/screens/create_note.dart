import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_first_app/noteBookModels/note_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key, required this.onNewNoteCreated})
      : super(key: key);

  final Function(Note) onNewNoteCreated;

  @override
  State<CreateNote> createState() => _CreateNoteState();
}
