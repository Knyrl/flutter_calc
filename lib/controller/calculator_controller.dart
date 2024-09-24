import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  RxString userInput = "".obs;
  RxString result = "".obs;
  String addData(value) => value == '.'
      ? userInput.value.contains('.') && !(isOperator(userInput.value))
          ? userInput.value
          : userInput.value += value
      : userInput.value += value;
  // userInput.value += value;
  String delData() => userInput.value = userInput.value.isNotEmpty
      ? userInput.value.substring(0, userInput.value.length - 1)
      : userInput.value;
  void clearData() {
    userInput.value = '';
    result.value = '';
  }

  void calculate() {
    String expression = userInput.value;

    expression = expression.replaceAll('x', '*');
    expression = expression.replaceAll('−', '-');

    Parser p = Parser();
    Expression exp = p.parse(expression);

    ContextModel cm = ContextModel();

    result.value = '= ${exp.evaluate(EvaluationType.REAL, cm)}';
  }

  bool isOperator(String x) {
    if (x.contains('/') ||
        x.contains('x') ||
        x.contains('−') ||
        x.contains('+') ||
        x.contains('%')) {
      return true;
    }
    return false;
  }
}
