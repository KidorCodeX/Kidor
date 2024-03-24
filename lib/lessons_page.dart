import 'package:flutter/material.dart';
import 'package:my_first_app/astronomy_page.dart';
import 'package:my_first_app/biology_page.dart';
import 'package:my_first_app/maths_page.dart';
import 'package:my_first_app/science_page.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
       debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              width: 100,
