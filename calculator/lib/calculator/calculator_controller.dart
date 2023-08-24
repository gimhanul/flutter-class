import 'package:calculator/calculator/enum.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxString num1 = ''.obs;
  String num0 = '';
  Rx<OperatorType> operator = OperatorType.none.obs;

  KeyType lastKeyType = KeyType.none;

  void onClickNumber(String inputNum) {
    if (lastKeyType == KeyType.operator) {
      num0 = num1.value;
      num1.value = '';
    }
    if (num1.value == '0' && inputNum == '0') {
      return;
    }
    num1.value = num1.value + inputNum;
    lastKeyType = KeyType.number;
  }

  void onClickPoint() {
    if (num1.value.contains('.')) {
      return;
    } else {
      if (num1.value.isEmpty) {
        num1.value = '0';
      }
      num1.value = '${num1.value}.';
    }
  }

  void onClickOperator(String name) {
    if (lastKeyType == KeyType.number) {
      onExecute();
    }
    switch (name) {
      case '+':
        operator.value = OperatorType.add;
        break;
      case '-':
        operator.value = OperatorType.subtract;
        break;
      case '×':
        operator.value = OperatorType.multiple;
        break;
      case '÷':
        operator.value = OperatorType.divide;
        break;
    }
    lastKeyType = KeyType.operator;
  }

  void onExecute() {
    if (num0.isEmpty) {
      num0 = '0';
    }
    switch (operator.value) {
      case OperatorType.add:
        num1.value = (double.parse(num0) + double.parse(num1.value)).toString();
        break;
      case OperatorType.subtract:
        num1.value = (double.parse(num0) - double.parse(num1.value)).toString();
        break;
      case OperatorType.multiple:
        num1.value = (double.parse(num0) * double.parse(num1.value)).toString();
        break;
      case OperatorType.divide:
        num1.value = (double.parse(num0) / double.parse(num1.value)).toString();
        break;
      case OperatorType.none:
        break;
    }

    lastKeyType = KeyType.operator;
    operator.value = OperatorType.none;
  }

  void onClickClear() {
    num1.value = '';
    num0 = '';
    operator.value = OperatorType.none;
    lastKeyType = KeyType.none;
  }

  void onNumberTap(String value) {
      switch (value) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          onClickNumber(value);
          break;
        case '.':
          onClickPoint();
          break;
        case 'C':
          onClickClear();
          break;
        case '×':
        case '+':
        case '-':
        case '÷':
          onClickOperator(value);
          break;
        case '=':
          onExecute();
      }
  }
}
