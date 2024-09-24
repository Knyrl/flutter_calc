// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// import 'package:flutter_calculator/theme/theme.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key, required this.name, this.buttonTapped});

  final String name;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(0.7),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: isOperator(name)
                ? theme.colorScheme.primary
                : theme.colorScheme.secondary,
            child: Center(
              child: Text(
                name,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x.contains('/') ||
        x.contains('x') ||
        x.contains('−') ||
        x.contains('+') ||
        x.contains('C') ||
        x.contains('⌫') ||
        x.contains('=') ||
        x.contains('%')) {
      return true;
    }
    return false;
  }
}
