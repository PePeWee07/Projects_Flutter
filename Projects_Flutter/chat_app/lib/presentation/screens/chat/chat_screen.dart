

import 'package:chat_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.ytimg.com/vi/FNx_YiYoy5A/hqdefault.jpg',
            ),
          ),
        ),
        title: const Text(' El comandate 🎖🪖🫡'),
        centerTitle: false,
      ),
      body: _ChatWidget(),
    );
  }
}

class _ChatWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            Expanded(child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const HerMessageBubble()
                : const MyMessageBubble();
              })),

            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}