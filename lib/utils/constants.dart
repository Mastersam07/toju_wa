import 'package:flutter/material.dart';

Color kBoxDarkColor = Color(0xFF1C1B32);
Color kBoxLightColor = Colors.white;
BorderRadius kBoxesRadius = BorderRadius.circular(10);

ThemeData kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
);
ThemeData kLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.grey[100],
  scaffoldBackgroundColor: Colors.grey[100],
);