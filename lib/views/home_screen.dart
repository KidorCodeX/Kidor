import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/home_page.dart';
import 'package:my_first_app/models/flutter_topics_model.dart';
import 'package:my_first_app/models/humanHeart10_questions_model%20copy%209.dart';
import 'package:my_first_app/views/quiz_screen.dart'; // Import QuizScreen

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({Key? key}) : super(key: key);

  @override
  _QuizHomePageState createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

  List<FlutterTopics> _topicsList = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromFirebase();
  }

  void fetchDataFromFirebase() {
    _databaseReference
        .child('flutterTopicsList')
        .once()
        .then((DatabaseEvent snapshot) {
      if (snapshot.snapshot.value != null && snapshot.snapshot.value is List) {
        List<dynamic> topicsData = snapshot.snapshot.value as List<dynamic>;
        setState(() {
          _topicsList = topicsData.map((topicMap) {
            // Extract topic details from the map
            int id = topicMap['id'];
            String topicName = topicMap['topicName'];
            String topicImage = topicMap['topicImage'];

            // Ensure topicQuestions is treated as List<Map<String, dynamic>>
            List<dynamic> questionMapsss = topicMap['topicQuestions'];

            List<LayOutQuestion> questions = [];

            questionMapsss.forEach((questionMap) {
              String text = questionMap['text'];
              List<LayOutOption> options = [];
              List<dynamic> optionMaps = questionMap['options'];
              optionMaps.forEach((optionMap) {
                String optionText = optionMap['text'];
                bool isCorrect = optionMap['isCorrect'];
                options
                    .add(LayOutOption(text: optionText, isCorrect: isCorrect));
              });

              Map correctAnswerMap = questionMap['correctAnswer'];
              LayOutOption correctAnswer = LayOutOption(
                  text: correctAnswerMap['text'],
                  isCorrect: correctAnswerMap['isCorrect']);

              int id = questionMap['id'];

              questions.add(LayOutQuestion(
                text: text,
                options: options,
                id: id,
                correctAnswer: correctAnswer,
              ));
            });

            // Construct and return the topic object
            return FlutterTopics(
              id: id,
              topicName: topicName,
              topicImage: Image.asset("assets/magnet.jpg"),
              topicColor: cardColor,
              topicQuestions: questions,
            );
          }).toList();
        });
      } else {
        print("Failed to fetch data or data is not in the expected format");
      }
    }).catchError((error) {
      print("Failed to fetch data: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color.fromARGB(255, 128, 91, 237);
    const Color bgColor3 = Color.fromARGB(255, 255, 255, 255);
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(username: "Student")),
            );
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: bgColor3,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.24),
                      blurRadius: 20.0,
                      offset: const Offset(0.0, 10.0),
                      spreadRadius: -10,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                ),
                //child: Image.asset("assets/dash.png"),
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Lesson-Quiz ",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 25,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.85,
                ),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: _topicsList.length,
                itemBuilder: (context, index) {
                  final topicsData = _topicsList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(
                            topicType: topicsData.topicName,
                            topicImage: Image.asset("assets/magnet.jpg"),
                            questionlenght: topicsData.topicQuestions,
                            optionsList: topicsData.topicQuestions
                                .map((question) => question.options)
                                .toList(),
                          ),
                        ),
                      );
                      print(topicsData.topicName);
                    },
                    child: Card(
                      color: bgColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              topicsData.topicName,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
