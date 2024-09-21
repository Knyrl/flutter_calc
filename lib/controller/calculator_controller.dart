import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxString userInput = "".obs;
  RxString result = "".obs;
  String addData(value) => userInput.value += value;
  String delData() => userInput.value = userInput.value.isNotEmpty
      ? userInput.value.substring(0, userInput.value.length - 1)
      : userInput.value;
  void clearData() {
    userInput.value = '';
    result.value = '';
  }

  String calculate(value) => result.value = "= Посчитай сам, дура";
}
