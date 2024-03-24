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
          