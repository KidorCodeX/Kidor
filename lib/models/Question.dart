import 'package:my_first_app/models/Option.dart';

class Question {
  final String text;
  final List<Option> options;
  final Option correctAnswer;
  final int id;

  Question({
    required this.text,
    required this.options,
    required this.correctAnswer,
    required this.id,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    List<dynamic> optionsJson = json['options'];
    List<Option> options =
        optionsJson.map((optionJson) => Option.fromJson(optionJson)).toList();
    Option correctAnswer = Option.fromJson(json['correctAnswer']);
    int id = json['id'];
    return Question(
      text: json['text'],
      options: options,
      correctAnswer: correctAnswer,
      id: id,
    );
  }
}
