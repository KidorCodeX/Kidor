import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_first_app/web_view_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
