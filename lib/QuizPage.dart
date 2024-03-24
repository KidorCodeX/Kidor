import 'package:flutter/material.dart';
import 'package:my_first_app/DBHelper.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  late List<Map<String, dynamic>> _quizData = [];
  late List<String> _domains = [];
  int _currentQuestionIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadQuizData();
  }

  Future<void> _loadQuizData() async {
    final List<Map<String, dynamic>> quizData = await DBHelper.getAllMCQs();
    setState(() {
      _quizData = quizData;

      // Extract unique domains from the quiz data
      _domains =
          _quizData.map((quiz) => quiz['domain'] as String).toSet().toList();
    });
  }

  void _showNextQuestion() {
    setState(() {
      _currentQuestionIndex++;
    });
  }

  void _showQuizByDomain(String domain) {
    // Filter quiz data based on the selected domain
    final filteredQuizzes =
        _quizData.where((quiz) => quiz['domain'] == domain).toList();

    // Navigate to a new page to display quizzes for the selected domain
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DomainQuizPage(quizzes: filteredQuizzes),
      ),
    );
  }

  void _deleteDomain(String domain) async {
    // Add logic to delete the domain from the database
    await DBHelper.deleteDomain(domain);

    // Reload the quiz data after deletion
    _loadQuizData();
  }

  @override
  Widget build(BuildContext context) {
    if (_quizData.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Page'),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (_currentQuestionIndex >= _quizData.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Page'),
        ),
        body: Center(
          child: Text('Quiz completed!'),
        ),
      );
    }

    