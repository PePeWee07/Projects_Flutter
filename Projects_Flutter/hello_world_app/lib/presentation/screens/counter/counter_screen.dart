
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}






class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  String textCounter = 'Counter clicks';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100 )),
              Text(textCounter, style: const TextStyle( fontSize: 25 )),
              //Alternativa a CAMBAIR EL TEXTO
              Text('Click${ clickCounter == 1 ? '' : 's' }', style: const TextStyle( fontSize: 25 ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter++;
              (clickCounter == 1) ? textCounter = 'Click' : textCounter = 'Clicks';
            });
          },
          child: const Icon(Icons.plus_one),
        )
      );
  }
}