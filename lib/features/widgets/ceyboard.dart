// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_calculator/features/widgets/calculator_button.dart';

class Ceyboard extends StatelessWidget {
  const Ceyboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CeyboardRow(
          names: ['C', Icons.backspace_outlined, Icons.percent, '/'],
        ),
        CeyboardRow(
          names: ['7', '8', '9', Icons.close],
        ),
        CeyboardRow(
          names: ['4', '5', '6', '-'],
        ),
        CeyboardRow(
          names: ['1', '2', '3', '+'],
        ),
        CeyboardRow(
          names: ['00', '0', '.', '00'],
        ),
      ],
    );
  }
}

class CeyboardRow extends StatelessWidget {
  const CeyboardRow({
    super.key,
    required this.names,
  });
  final List<Object> names;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        names.length,
        (index) => Expanded(
          child: names[index].toString() == '00'
              ? const Spacer()
              : names[index] is String
                  ? CalculatorButton(
                      name: names[index].toString(),
                    )
                  : CalculatorButton(
                      name: names[index].toString(),
                      icon: names[index] as IconData,
                    ),
        ),
      ),
    );
  }
}
