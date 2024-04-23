import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInpitBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide( color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
        hintText: 'Escribe un mensaje "?"',
        border: outlineInpitBorder,
        focusedBorder: outlineInpitBorder,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final textValue = textController.value.text;
            print('Btn: $textValue');
            textController.clear();
          },
        ),
      );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Mensaje enviado: $value');
        textController.clear();
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      //   print('Mensaje: $value');
      // },
    );
  }
}