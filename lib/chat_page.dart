import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/DBHelper.dart';
import 'package:my_first_app/consts.dart';

import 'dart:convert'; // Add this import for jsonDecode function

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _openAI = OpenAI.instance.build(
    token: OPENAI_API,
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 5),
    ),
    enableLog: true,
  );

  final ChatUser _currentUser = ChatUser(
    id: '1',
    firstName: 'd',
    lastName: 'd',
  );

  final ChatUser _gptChatUser = ChatUser(
    id: '2',
    firstName: 'Kidor',
    lastName: '-Ai',
  );

  List<ChatMessage> _messages = <ChatMessage>[];
  String messageText = "";
  List<ChatUser> _typingUsers = <ChatUser>[];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(213, 202, 255, 1),
        title: const Text(
          'generate',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: DashChat(
        currentUser: _currentUser,
        typingUsers: _typingUsers,
        messageOptions: const MessageOptions(
          currentUserContainerColor: Colors.black,
          containerColor: Color.fromRGBO(213, 202, 255, 1),
          textColor: Colors.black,
        ),
        onSend: (ChatMessage m) {
          getChatResponse(m);
        },
        messages: _messages,
      ),
    );
  }

  Future<void> saveMCQToLocalDB(String jsonString) async {
    // Convert the JSON string to a Map
    Map<String, dynamic> mcqData = json.decode(jsonString);

    print(mcqData);

    // Assuming that 'questions' key contains a list of questions
    List<dynamic> questionsList = mcqData['questions'];

    for (var questionData in questionsList) {
      String question = questionData['question'];
      String answer = questionData['correct_answer'];

      List<dynamic> optionsList = questionData['options'];
      String options =
          optionsList.map((option) => option.toString()).join(', ');

      await DBHelper.insertMCQ(messageText, question, options, answer);
    }
  }
  Future<void> getChatResponse(ChatMessage m) async {
    setState(() {
      _messages.insert(0, m);
      _typingUsers.add(_gptChatUser);
    });

    List<Messages> _messagesHistory = _messages.reversed.map((m) {
      if (m.user == _currentUser) {
        messageText = m.text;
        return Messages(
          role: Role.user,
          content:
              """ Generate two multiple-choice questions in JSON format based on the given input. If the input is irrelevant or not suitable for generating MCQs, please create two random multiple-choice questions related to general knowledge this is the input: ${m.text}
               {
  "questions": [
    {
      "question": "What is related to cats?",
      "options": ["Dogs", "Fish", "Birds", "Mice"],
      "correct_answer": "Dogs"
    },
    {
      "question": "Choose the correct statement regarding gravity:",
      "options": ["It pushes objects away from each other.", "It is stronger on the Moon than on Earth.", "It is responsible for holding planets in orbit around the Sun.", "It is a form of electromagnetic force."],
      "correct_answer": "It is responsible for holding planets in orbit around the Sun."
    }
  ]
}
follow this format 
               
               """,
        ); //and don't say anything else only the MCQ's, if you can not  create anything from it create something genaral knoledge and dont say anything only the mcqs
      } else {
        return Messages(role: Role.assistant, content: m.text);
      }
    }).toList();

