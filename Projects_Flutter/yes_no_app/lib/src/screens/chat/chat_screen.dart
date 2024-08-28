import 'package:flutter/material.dart';
import 'package:yes_no_app/src/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/src/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/src/widgets/share/message_field_box.dart';

void main() => runApp(const ChatScreen());

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/image.png'),
          ),
        ),
        title: const Text('My Paisanita 💕'),
      ),
      body: _ChatView(),
    );
  }
}


class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [

            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return (index % 2 == 0) ? const MyMessageBubble() : const HerMessageBubble();
              },
            )),

          //* Caja de MessageField
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}