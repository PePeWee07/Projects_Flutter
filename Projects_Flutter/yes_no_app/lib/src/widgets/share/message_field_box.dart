import 'package:flutter/material.dart';

void main() => runApp(const MessageFieldBox());

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineImputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.white),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineImputBorder,
      focusedBorder: outlineImputBorder,
      hintText: 'Escribe un mensaje...',
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textController.value.text;
          print('Text-btn: $textValue');
          textController.clear();
        },
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: TextFormField(
        onTapOutside: (event) => focusNode.unfocus(),
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          print('Submitted: $value');
          textController.clear();
          focusNode.requestFocus();
        }
      ),
    );
  }
}