import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        drawer: SideBar(),
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
                                            SlideEffect(),
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
                                            SlideEffect()
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
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Animate(
                                      effects: [
                                        FadeEffect(delay: 500.ms),
                                        SlideEffect()
                                      ],
                                      child: Container(
                                        width: 105,
                                        height: 105,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage("assets/me.jpg"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
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
                            height: 100,
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/homePage/astronaut.png"),
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
                                    'AR Learning Gateway',
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
                                    'Enjoy learning with the newest technology...',
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Topics',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.filter_list_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    width: double.infinity,
                    height: 160,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Container(
                              width: 163,
                              height: 155,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/homePage/lessonQuiz.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QuizHomePage()),
                                  );
                                },
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.all(20.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Container(
                                width: 163,
                                height: 155,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/homePage/arLessons.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: RawMaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LessonsPage()),
                                    );
                                  },
                                  shape: const RoundedRectangleBorder(),
                                  padding: const EdgeInsets.all(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 160,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Container(
                              width: 163,
                              height: 155,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/homePage/arGames.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GamePage()),
                                  );
                                },
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.all(20.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Container(
                                width: 163,
                                height: 155,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/homePage/arPortal.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: RawMaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ArPortalPage()),
                                    );
                                  },
                                  shape: const RoundedRectangleBorder(),
                                  padding: const EdgeInsets.all(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 160,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Container(
                              width: 163,
                              height: 155,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/homePage/noteBook.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NoteBook()),
                                  );
                                },
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.all(20.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Container(
                                width: 163,
                                height: 155,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/homePage/quizzesMain.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: RawMaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => QuizPage()),
                                    );
                                  },
                                  shape: const RoundedRectangleBorder(),
                                  padding: const EdgeInsets.all(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
