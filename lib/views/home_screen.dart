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
                options.add(LayOutOption(text: optionText, isCorrect: isCorrect));
              });

              Map correctAnswerMap =
                  questionMap['correctAnswer'];
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
              topicColor:cardColor,
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

 