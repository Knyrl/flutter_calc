import 'package:flutter/material.dart';
import 'package:flutter_calculator/controller/calculator_controller.dart';
import 'package:flutter_calculator/features/widgets/Keyboard.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final CalculatorController controller = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Obx(
                () => Text("${controller.userInput} ${controller.result}",
                    style: theme.textTheme.titleLarge),
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Keyboard(),
          ),
        ],
      ),
    );
  }
}
