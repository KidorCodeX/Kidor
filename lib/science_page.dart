import 'package:flutter/material.dart';
import 'package:my_first_app/web_view_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

final Uri _url = Uri.parse('https://webxr.run/4X5EpkPnbxeoG');
final Uri _url1 = Uri.parse('https://ar-code.com/ec6gEkIqh');
final Uri _url2 = Uri.parse('https://webxr.run/4X5EpkPnbxeoG');


class SciencePage extends StatelessWidget {
  const SciencePage({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/sciencePage/scienceBarPic.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150)
                )
              ),
            ),
            LessonCard(
              lessonImagePath: "assets/sciencePage/atom.png",
              heading: "Atom",
              paragraph: "Learn the atomic structure and explore different atomic models.",
              gameButtonImagePath: "assets/gameButton.png",
              onTap:
              _launchUrl,
            ),
            LessonCard(
              lessonImagePath: "assets/sciencePage/electro.png",
              heading: "Electro Magnetic",
              paragraph: "Learn about current and use of electricity",
              gameButtonImagePath: "assets/gameButton.png",
              onTap:_launchUrl1,
            ),
            LessonCard(
              lessonImagePath: "assets/sciencePage/plant.png",
              heading: "Plant cell",
              paragraph: "Learn the structure of the smallest unit in plants ",
              gameButtonImagePath: "assets/gameButton.png",
              onTap:_launchUrl2,
            ),

            
          ],
        )


      ),
    );
  }

  