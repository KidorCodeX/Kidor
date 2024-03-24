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

class _QuizScreenState extends State<QuizScreen> {
  int questionTimerSeconds = 20;
  Timer? _timer;
  int _questionNumber = 1;
  PageController _controller = PageController();
  int score = 0;
  bool isLocked = false;
  List optionsLetters = ["A.", "B.", "C.", "D."];

  void startTimerOnQuestions() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (questionTimerSeconds > 0) {
            questionTimerSeconds--;
          } else {
            _timer?.cancel();
            navigateToNewScreen();
          }
        });
      }
    });
  }

  void stopTime() {
    _timer?.cancel();
  }

  void navigateToNewScreen() {
    if (_questionNumber < widget.questionlenght.length) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      setState(() {
        _questionNumber++;
        isLocked = false;
      });
      _resetQuestionLocks();
      startTimerOnQuestions();
    } else {
      _timer?.cancel();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsScreen(
            score: score,
            totalQuestions: widget.questionlenght.length,
            whichTopic: widget.topicType,
          ),
        ),
      );
    }
  }

 @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _resetQuestionLocks();
    startTimerOnQuestions();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color bgColor3 = Color.fromARGB(255, 255, 255, 255);
    const Color bgColor = Color.fromARGB(255, 146, 110, 247);

    return WillPopScope(
      onWillPop: () {
        Navigator.popUntil(context, (route) => route.isFirst);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: bgColor3,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "${widget.topicType} Quiz",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                 Padding(
                  padding: const EdgeInsets.only(right: 14, bottom: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          CupertinoIcons.clear,
                          color: Color.fromARGB(255, 1, 1, 1),
                          weight: 10,
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: LinearProgressIndicator(
                            minHeight: 20,
                            value: 1 - (questionTimerSeconds / 20),
                            backgroundColor: Color.fromARGB(255, 209, 183, 243),
                            color: const Color.fromARGB(255, 0, 0, 0),
                            valueColor: const AlwaysStoppedAnimation(bgColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12, left: 5, right: 5),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 253, 253),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.24),
                        blurRadius: 20.0,
                        offset: const Offset(0.0, 10.0),
                        spreadRadius: 10,
                      )
                    ],
                  ),