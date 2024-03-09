import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade400,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade100,
  ),
  // colorSchemeSeed: Colors.grey, //  By setting the color scheme seed parameter in your theme constructor, Flutter will generate a harmonious color scheme for each widget in your app from this entry.
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade500,
  ),
  // colorSchemeSeed: Colors.black
);
