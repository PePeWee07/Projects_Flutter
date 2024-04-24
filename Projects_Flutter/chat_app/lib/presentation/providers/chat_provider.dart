import 'package:chat_app/config/helpers/get_yes_no_answer.dart';
import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(
      text: 'Como esta mi comandante?',
      fromWho: FromWho.me,
    ),
    Message(
      text: 'Que estas haciendo?',
      fromWho: FromWho.me,
    ),
  ];

  Future<void> sendMessage( String text ) async {

    if (text.isEmpty) return;

    final newMessage = Message(
      text: text,
      fromWho: FromWho.me,
    );
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    } 

    notifyListeners();

    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage =  await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  // List<String> _messages = [];

  // List<String> get messages => _messages;

  // void addMessage(String message) {
  //   _messages.add(message);
  //   notifyListeners();
  // }
}