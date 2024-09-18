// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_calculator/features/widgets/calculator_button.dart';

class Ceyboard extends StatelessWidget {
  const Ceyboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          CeyboardRow(
            names: [
              "c",
              Icons.backspace_outlined,
              Icons.percent_outlined,
              "/",
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorButton(
                  name: '7',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '8',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '9',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: 'x',
                  icon: Icons.close,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorButton(
                  name: '4',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '5',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '6',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '-',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorButton(
                  name: '1',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '2',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '3',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '+',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Spacer(),
              ),
              Expanded(
                child: CalculatorButton(
                  name: '0',
                ),
              ),
              Expanded(
                child: CalculatorButton(
                  name: ',',
                ),
              ),
              Expanded(
                child: Spacer(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CeyboardRow extends StatelessWidget {
  const CeyboardRow({
    super.key,
    required this.names,
  });

  // final Map<Object, String> namesList;
  final List<Object> names;
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CalculatorButton(
            name: "C",
          ),
        ),
        Expanded(
          child: CalculatorButton(
            name: 'del',
            icon: Icons.backspace_outlined,
          ),
        ),
        Expanded(
          child: CalculatorButton(
            name: '%',
            icon: Icons.percent,
          ),
        ),
        Expanded(
          child: CalculatorButton(
            name: '/',
          ),
        ),
      ],
    );
  }
}
