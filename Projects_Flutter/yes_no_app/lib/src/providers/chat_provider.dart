import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer _getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(
      text: 'Hola, como te va?',
      fromWho: FromWho.me
    ),
    Message(
      text: 'Como estuvo tu día?',
      fromWho: FromWho.me
    )
  ];

  Future<void> sendMesagge(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(
      text: text,
      fromWho: FromWho.me
    );

    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReplay();
    } 

    notifyListeners();
    moveScrollToEnd();
  }

  Future<void> moveScrollToEnd() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut
    );
  }

Future<void> herReplay() async{
  final herMessage = await _getYesNoAnswer.getAnswer();
  messageList.add(herMessage);
  notifyListeners();
  moveScrollToEnd();
}
  

}