import 'package:my_first_app/models/Question.dart';

class FlutterTopics {
  final int id;
  final String topicName;
  final String topicImage;
  final List<Question> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicName,
    required this.topicImage,
    required this.topicQuestions,
  });

  factory FlutterTopics.fromJson(Map<String, dynamic> json) {
    List<dynamic> questionList = json['topicQuestions'];
    return FlutterTopics(
      id: json['id'],
      topicName: json['topicName'],
      topicImage: json['topicImage'],
      topicQuestions:
          questionList.map((question) => Question.fromJson(question)).toList(),
    );
  }
}
