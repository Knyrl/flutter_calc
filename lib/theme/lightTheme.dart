import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.blueGrey[600]!,
    primary: Colors.blueGrey[400]!,
    secondary: Colors.blueGrey[200]!,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 22,
    ),
  ),
);
