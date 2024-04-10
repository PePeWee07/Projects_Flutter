
import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6200EE);

const List<Color> _colorThemes = [
  _customColor,
  Color(0xFF76F813),
  Color(0xFF03DAC6),
  Color(0xFFEA80FC),
  Color(0xFF018786),
]; 

class AppTheme {

  final int slectedColor;

  AppTheme({this.slectedColor = 0})
  : assert(slectedColor >= 0 && slectedColor <= _colorThemes.length - 1,
  'Colors must be between 0 and ${_colorThemes.length}');


  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[slectedColor],
      brightness: Brightness.dark
    );
  }

}