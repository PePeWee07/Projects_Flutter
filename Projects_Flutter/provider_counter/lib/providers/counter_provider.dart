import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get getCounter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}