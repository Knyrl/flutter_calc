import 'package:flutter/material.dart';
import 'package:flutter_calculator/theme/darkTheme.dart';
import 'package:flutter_calculator/theme/lightTheme.dart';
import 'package:get/get.dart';

import 'routes/routes.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My own calculator",
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: routes,
    );
  }
}
