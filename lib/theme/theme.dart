import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: const ColorScheme.dark(),
  scaffoldBackgroundColor: const Color.fromARGB(238, 48, 48, 48),
  useMaterial3: true,
  textTheme: const TextTheme(
    labelMedium: TextStyle(
      color: Colors.black,
      fontSize: 22,
    ),
    labelLarge: TextStyle(
      color: Colors.white60,
      fontSize: 30,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 7, 238, 255),
      // fixedSize: const Size(5, 5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  ),
);
