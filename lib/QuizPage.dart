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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a Domain:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Column(
              children: _domains.asMap().entries.map((entry) {
                final index = entry.key;
                final domain = entry.value;
                final points = _calculatePointsForDomain(
                    index); // Function to calculate points

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () => _showQuizByDomain(domain),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '${index + 1}.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '$domain',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Delete Button
                    TextButton(
                      onPressed: () {
                        _deleteDomain(domain);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  int _calculatePointsForDomain(int domainIndex) {
    // You can implement your logic to calculate points for each domain
    // For example, you might have a data structure or logic to calculate points.
    // Replace this with your actual logic.
    return domainIndex * 10; // Sample logic, replace it with your own
  }
}



class DomainQuizPage extends StatefulWidget {
  final List<Map<String, dynamic>> quizzes;

  const DomainQuizPage({Key? key, required this.quizzes}) : super(key: key);

  @override
  _DomainQuizPageState createState() => _DomainQuizPageState();
}

class _DomainQuizPageState extends State<DomainQuizPage> {
  Map<int, String> _selectedAnswers = {};
  Map<int, bool> _isAnswerCorrect = {};

  void _checkAnswer(int index, String? selectedOption) {
    setState(() {
      _selectedAnswers[index] = selectedOption ?? '';
      _isAnswerCorrect[index] =
          widget.quizzes[index]['answer'] == selectedOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
      ),
      body: ListView.builder(
        itemCount: widget.quizzes.length,
        itemBuilder: (context, index) {
          final currentQuestion = widget.quizzes[index];
          final questionText = currentQuestion['question'] as String;
          final options = (currentQuestion['options'] as String).split(', ');
          final correctAnswer = currentQuestion['answer'] as String;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question ${index + 1}: $questionText',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Column(
                  children: options.map((option) {
                    return RadioListTile<String>(
                      title: Text(option),
                      value: option,
                      groupValue: _selectedAnswers[index],
                      onChanged: (String? value) {
                        _checkAnswer(index, value);
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 16),
                if (_isAnswerCorrect.containsKey(index) &&
                    _isAnswerCorrect[index] == true)
                  Text(
                    'Correct Answer: $correctAnswer',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                if (_isAnswerCorrect.containsKey(index) &&
                    _isAnswerCorrect[index] == false)
                  Text(
                    'Correct Answer: $correctAnswer',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
