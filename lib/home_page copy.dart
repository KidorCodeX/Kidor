import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_first_app/ar_game_page.dart';
import 'package:my_first_app/ar_portal_page.dart';
import 'package:my_first_app/lessons_page.dart';
import 'package:my_first_app/quiz_page.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:my_first_app/side_bar.dart';
import 'package:my_first_app/views/home_screen.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 50,
                width: 90,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            )),
        drawer: const SideBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Column(
