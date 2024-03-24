import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_first_app/web_view_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

final Uri _url = Uri.parse('https://webxr.run/x5Q9RGmpLxkWD');
final Uri _url1 = Uri.parse('https://webxr.run/V131LDZNYr8x4');
final Uri _url2 = Uri.parse('https://webxr.run/4X5EpkPnbxeoG');

class BiologyPage extends StatelessWidget {
  const BiologyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/biologyPage/biologyBar.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(150))),
          ),
          LessonCard(
            lessonImagePath: "assets/biologyPage/heartL.png",
            heading: "Heart",
            paragraph:
                "Explore the heart, its anatomy, functions, and significance. ",
            gameButtonImagePath: "assets/gameButton.png",
            onTap: _launchUrl,
          ),
          LessonCard(
            lessonImagePath: "assets/biologyPage/brainL.png",
            heading: "Brain",
            paragraph: "Discover the brain, exploring its structure. ",
            gameButtonImagePath: "assets/gameButton.png",
            onTap: _launchUrl1,
          ),
          LessonCard(
            lessonImagePath: "assets/biologyPage/animalCell.png",
            heading: "AnimalCell",
            paragraph: "Learn the structure of the smallest unit in animals ",
            gameButtonImagePath: "assets/gameButton.png",
            onTap: _launchUrl2,
          ),
        ],
      )),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }
}

class LessonCard extends StatelessWidget {
  final String lessonImagePath;
  final String heading;
  final String paragraph;
  final String gameButtonImagePath;
  final VoidCallback onTap;

  const LessonCard({
    Key? key,
    required this.lessonImagePath,
    required this.heading,
    required this.paragraph,
    required this.gameButtonImagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        width: 350,
        height: 150,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(15),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 130,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(lessonImagePath),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 27, right: 64, bottom: 5),
                      child: Container(
                        width: 104,
                        height: 25,
                        child: Text(
                          heading,
                          style: const TextStyle(
                            fontSize: 22.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: SizedBox(
                        width: 168,
                        height: 40,
                        child: Text(
                          paragraph,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onTap,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Container(
                              width: 77,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(gameButtonImagePath),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/heartL.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
