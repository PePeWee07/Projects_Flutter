import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {

  final Message message;

  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.end,
    //   children: [
    //     Container(
    //       decoration: BoxDecoration(
    //         color: colors.primary,
    //         borderRadius: BorderRadius.circular(20),
    //       ),
    //       child: const Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //         child: Text('Hola, ¿cómo estás?', 
    //                     style: TextStyle(color: Colors.white)),
    //       ),
    //     ),
    //     const SizedBox(height: 10),
    //   ],
    // );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const Text(
          '10:00 PM',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}