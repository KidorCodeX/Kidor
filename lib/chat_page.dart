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
