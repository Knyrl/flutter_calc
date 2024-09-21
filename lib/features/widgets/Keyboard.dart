// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_calculator/controller/calculator_controller.dart';

import 'package:flutter_calculator/features/widgets/calculator_button.dart';
import 'package:get/get.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: KeyboardRow(
            names: ['C', '⌫', '%', '/'],
          ),
        ),
        Expanded(
          child: KeyboardRow(
            names: ['7', '8', '9', 'x'],
          ),
        ),
        Expanded(
          child: KeyboardRow(
            names: ['4', '5', '6', '−'],
          ),
        ),
        Expanded(
          child: KeyboardRow(
            names: ['1', '2', '3', '+'],
          ),
        ),
        Expanded(
          child: KeyboardRow(
            names: ['00', '0', '.', '='],
          ),
        ),
      ],
    );
  }
}

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({
    super.key,
    required this.names,
  });
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        names.length,
        (index) => Expanded(
          child: names[index] == '00'
              ? const Spacer()
              : names[index] == "C"
                  ? CalculatorButton(
                      buttonTapped: () {
                        Get.find<CalculatorController>().clearData();
                      },
                      name: names[index],
                    )
                  : names[index] == "⌫"
                      ? CalculatorButton(
                          buttonTapped: () {
                            Get.find<CalculatorController>()
                                    .result
                                    .value
                                    .isEmpty
                                ? Get.find<CalculatorController>().delData()
                                : null;
                          },
                          name: names[index],
                        )
                      : names[index] == "="
                          ? CalculatorButton(
                              buttonTapped: () {
                                Get.find<CalculatorController>()
                                    .calculate(names[index]);
                              },
                              name: names[index],
                            )
                          : CalculatorButton(
                              buttonTapped: () {
                                Get.find<CalculatorController>()
                                    .addData(names[index]);
                              },
                              name: names[index],
                            ),
        ),
      ),
    );
  }
}
