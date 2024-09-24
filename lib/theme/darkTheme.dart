import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.grey[800]!,
    secondary: Colors.grey[600]!,
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
