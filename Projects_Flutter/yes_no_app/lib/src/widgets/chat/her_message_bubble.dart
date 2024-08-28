import 'package:flutter/material.dart';

void main() => runApp(const HerMessageBubble());

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text('Vamos por unos cuys', style: TextStyle(color: Colors.white)),
          ),
        ),

        const SizedBox(height: 5.0),

        _ImageBubble(),

        const SizedBox(height: 10.0),
        //TODO: add img
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/12-dafd576be23d3768641340f76658ddfe.gif', 
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: const Text('Escribiendo...'),
          );
        },
      ),
    );
  }
  
}