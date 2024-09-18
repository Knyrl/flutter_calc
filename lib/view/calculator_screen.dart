import 'package:flutter/material.dart';
import 'package:flutter_calculator/features/widgets/ceyboard.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  CalculatorScreenState createState() => CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen> {
  Widget body() {
    final theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              // _output,
              'пупупупу',
              // textAlign: TextAlign.end,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ),
        const Ceyboard(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text('Calculator'),
      ),
      body: body(),
    );
  }

  // Widget _buildButton(String value) {
  //   return ElevatedButton(
  //     onPressed: () {
  //       if (value == 'C') {
  //         _onClearPressed();
  //       } else {
  //         _onButtonPressed(value);
  //       }
  //     },
  //     child: Text(value),
  //   );
  // }
}
