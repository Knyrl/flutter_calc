import 'package:flutter/material.dart';
import 'package:flutter_calculator/theme/theme.dart';

import 'routes/routes.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My own calculator",
      theme: theme,
      routes: routes,
    );
  }
}
