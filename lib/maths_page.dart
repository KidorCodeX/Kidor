import 'package:flutter/material.dart';
import 'package:my_first_app/web_view_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

final Uri _url = Uri.parse('https://webxr.run/4X5EpkPnbxeoG');
final Uri _url1 = Uri.parse('https://ar-code.com/ec6gEkIqh');
final Uri _url2 = Uri.parse('https://webxr.run/4X5EpkPnbxeoG');



class MathsPage extends StatelessWidget {
  const MathsPage({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/mathsPage/mathsBar.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150)
                )
              ),
            ),
            LessonCard(
              lessonImagePath: "assets/mathsPage/circleL.png",
              heading: "Circle",
              paragraph: "Learn everything  about circles and its formulas ",
              gameButtonImagePath: "assets/gameButton.png",
              onTap:
              _launchUrl,
            ),
            LessonCard(
              lessonImagePath: "assets/mathsPage/triangleL.png",
              heading: "Triangle",
              paragraph: "Learn everything  about triangles and its formulas",
              gameButtonImagePath: "assets/gameButton.png",
              onTap:_launchUrl1,
            ),
            LessonCard(
              lessonImagePath: "assets/mathsPage/cubeL.png",
              heading: "Cube",
              paragraph: "Learn everything  about cubes and its formulas ",
              gameButtonImagePath: "assets/gameButton.png",
              onTap:_launchUrl2,
            ),

            
          ],
        )


      ),
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

 