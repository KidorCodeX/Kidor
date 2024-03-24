import 'package:flutter/material.dart';
import 'package:my_first_app/QuizPage.dart';
import 'package:my_first_app/chat_page.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

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
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/logo.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Container(
                    width: 370,
                    height: 125,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF6855FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 100,
                              height: 90,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/quizPage/quizBarPic.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: SizedBox(
                                    width: 200,
                                    height: 30,
                                    //color: Colors.black,
                                    child: Text(
                                      'Quiz | Revise',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Container(
                                    width: 40,
                                    height: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: SizedBox(
                                    width: 260,
                                    height: 40,
                                    //color: Colors.black,
                                    child: Text(
                                      'Would you like to generate your own quiz for a different lesson? We got you!',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),                                  