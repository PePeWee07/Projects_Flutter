import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  int _numberToAdd = 0;

  int get getCounter => _counter;
  int get getNumberToAdd => _numberToAdd;

  void increment() {
    _counter++;
    notifyListeners();
  }

  setInt({required int value}) async {
    return _numberToAdd = value;
  }

  int get getValue => _numberToAdd + _counter;

}