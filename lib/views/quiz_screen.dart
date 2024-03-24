import 'dart:async';

import 'package:my_first_app/views/results_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final String topicType;
  final List<dynamic> questionlenght;
  final dynamic optionsList;
  final Image topicImage;
  const QuizScreen(
      {super.key,
      required this.questionlenght,
      required this.optionsList,
      required this.topicImage,
      required this.topicType});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}
