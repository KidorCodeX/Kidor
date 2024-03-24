import 'package:my_first_app/models/humanHeart10_questions_model%20copy%209.dart';
import 'package:my_first_app/models/humanHeart11_questions_model%20copy%2010.dart';
import 'package:my_first_app/models/humanHeart12_questions_model%20copy%2011.dart';
import 'package:my_first_app/models/humanHeart3_questions_model%20copy%203.dart';
import 'package:my_first_app/models/humanHeart4_questions_model%20copy%204.dart';
import 'package:my_first_app/models/humanHeart5_questions_model%20copy%202.dart';
import 'package:my_first_app/models/humanHeart6_questions_model%20copy%205.dart';
import 'package:my_first_app/models/humanHeart7_questions_model%20copy%206.dart';
import 'package:my_first_app/models/humanHeart8_questions_model%20copy%207.dart';
import 'package:my_first_app/models/humanHeart9_questions_model%20copy%208.dart';
import 'package:my_first_app/models/humanHeart_questions_model.dart';
//import 'package:flashcards_quiz/models/naviagation_questions_model.dart';
//import 'package:flashcards_quiz/models/widget_questions_model.dart';
//import 'package:flashcards_quiz/models/state_questions_model.dart';
import 'package:flutter/cupertino.dart';


const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final Image topicImage;
  //final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicImage,
    //required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });

  factory FlutterTopics.fromJson(Map<String, dynamic> json) {
    return FlutterTopics(
      id: json['id'],
      topicColor: Color(json['topicColor']),
      topicImage: Image.asset(json['topicImage']),
      topicName: json['topicName'],
      topicQuestions: json['topicQuestions'],
    );
  }
}

final List<FlutterTopics> flutterTopicsList = [
  
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicImage: Image.asset("assets/dash.png"),
    //topicIcon: CupertinoIcons.arrow_2_circlepath,
    topicName: "Current",
    topicQuestions: humanHeartList3,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicImage: Image.asset("assets/dash.png"),
    //topicIcon: CupertinoIcons.paperplane,
    topicName: "Photosynthesis",
    topicQuestions: humanHeartList4,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicImage: Image.asset("assets/dash.png"),
    //topicIcon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
    topicName: "HUMAN HEART",
    topicQuestions: humanHeartList,
  ),
  FlutterTopics(
    id: 4,
    topicColor: cardColor,
    topicImage: Image.asset("assets/dash.png"),
    topicName: "Brain",
    topicQuestions: humanHeartList5,
  ),
  FlutterTopics(
      id: 5,
      topicColor: cardColor,
      topicImage: Image.asset("assets/dash.png"),
      topicName: "Liver",
      topicQuestions: humanHeartList6),
  FlutterTopics(
      id: 6,
      topicColor: cardColor,
      topicImage: Image.asset("assets/dash.png"),
      topicName: "Circle",
      topicQuestions: humanHeartList7),
  FlutterTopics(
    id: 7,
    topicColor: cardColor,
    topicImage: Image.asset("assets/dash.png"),
    topicName: "Triangle",
    topicQuestions: humanHeartList8,
  ),
  FlutterTopics(
      id: 8,
      topicColor: cardColor,
      topicImage: Image.asset("assets/dash.png"),
      topicName: "Cube",
      topicQuestions: humanHeartList9),
  FlutterTopics(
      id: 9,
      topicColor: cardColor,
      topicImage: Image.asset("assets/dash.png"),
      topicName: "Flame-Test",
      topicQuestions: humanHeartList10),
  FlutterTopics(
      id: 10,
      topicColor: cardColor,
      topicImage: Image.asset("assets/dash.png"),
      topicName: "Cl2-Gas",
      topicQuestions: humanHeartList11),
  FlutterTopics(
      id: 11,
      topicColor: cardColor,
      topicImage: Image.asset("assets/dash.png"),
      topicName: "D-Block",
      topicQuestions: humanHeartList12),
];
