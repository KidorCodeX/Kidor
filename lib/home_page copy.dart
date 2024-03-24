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
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 252,
                                    height: 135,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Animate(
                                          effects: [
                                            FadeEffect(delay: 500.ms),
                                            const SlideEffect(),
                                          ],
                                          child: const Text(
                                            'Welcome,',
                                            style: TextStyle(
                                              fontSize: 35,
                                            ),
                                          ),
                                        ),
                                        Animate(
                                          effects: [
                                            FadeEffect(delay: 500.ms),
                                            const SlideEffect()
                                          ],
                                          child: Text(
                                            '$username !',
                                            style: const TextStyle(
                                                fontSize: 27,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 17),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Free User',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15),
                                                child: Icon(
                                                  Icons.circle,
                                                  color: Colors.purple,
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Since 2024',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
