// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
          borderRadius: BorderRadius.circular(10),
          child: Container(
            // height: 120,
            color: theme.colorScheme.primary,
            child: Center(
              child: Text(
                name,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
