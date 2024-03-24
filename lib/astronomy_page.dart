import 'package:flutter/material.dart';
import 'package:my_first_app/web_view_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Astronomy extends StatelessWidget {
  const Astronomy({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/astronomyPage/astronomyBarPic.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(150))),
          ),
          LessonCard(
            lessonImagePath: "assets/astronomyPage/layer.png",
            heading: "Earth's layers",
            paragraph: "Learn about the layers in the planet earth ",
            gameButtonImagePath: "assets/gameButton.png",
            onTap: _launchUrl,
          ),
          LessonCard(
            lessonImagePath: "assets/astronomyPage/solar.png",
            heading: "Solar System",
            paragraph:
                "Learn about the layers in the planet earth Solar System",
            gameButtonImagePath: "assets/gameButton.png",
            onTap: _launchUrl1,
          ),
          LessonCard(
            lessonImagePath: "assets/astronomyPage/star.png",
            heading: "Star Patterns",
            paragraph: "Learn everything you want to know about star patterns",
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
