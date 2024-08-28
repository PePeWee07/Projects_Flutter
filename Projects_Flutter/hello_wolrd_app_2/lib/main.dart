import 'package:flutter/material.dart';
import 'package:hello_wolrd_app_2/src/screens/counters/counter_functions_screen.dart';
// import 'package:hello_wolrd_app_2/src/screens/counters/counter_screen.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home: Center(child: Text('Hello World', textDirection: TextDirection.rtl))
      debugShowCheckedModeBanner: false,
      home: const CounterFuntionsScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
      ),
    );
  }
}