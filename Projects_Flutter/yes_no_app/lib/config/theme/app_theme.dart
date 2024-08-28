import 'package:flutter/material.dart';

  const Color _customColor = Color(0xFF4A4A4A);
  const List<Color> _colorTheme = [
    _customColor,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.grey,
    Colors.cyan,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.blueGrey,
  ];

class AppTheme {
  int selectColor;

  AppTheme({
    this.selectColor = 0
    }): assert(selectColor >= 0 && selectColor <= _colorTheme.length - 1, 'selectColor solo entre 0 y ${_colorTheme.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorTheme[selectColor],
      brightness: Brightness.dark
    );
  }
}