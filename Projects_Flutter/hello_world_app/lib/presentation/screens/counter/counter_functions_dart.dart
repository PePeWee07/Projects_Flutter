import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String textCounter = 'Counter clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                  textCounter = 'Counter clicks';
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Text(textCounter, style: const TextStyle(fontSize: 25)),
              //Alternativa a CAMBAIR EL TEXTO
              Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, 
          children: [
            CustomButtom(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                  textCounter = 'Counter clicks';
                });
              }
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clickCounter == 0)  { return;}
                  clickCounter--;
                  (clickCounter == 1) ? textCounter = 'Click' : textCounter = 'Clicks';
                });
              }
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                  (clickCounter == 1) ? textCounter = 'Click' : textCounter = 'Clicks';
                });
              }
            )
          ]
      ));
  }
}

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key, required this.icon, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      //backgroundColor: Colors.blue,
      elevation: 10,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
