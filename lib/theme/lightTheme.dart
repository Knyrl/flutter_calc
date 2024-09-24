import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.grey[800]!,
    secondary: Colors.grey[600]!,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 30,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 22,
    ),
  ),
);
