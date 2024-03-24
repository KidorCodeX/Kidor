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
