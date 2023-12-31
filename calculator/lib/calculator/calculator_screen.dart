import 'package:calculator/calculator/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('계산기')),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.all(35),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFD6BBFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 4,
              offset: Offset(4, 8),
            ),
          ],
        ),
        child: Column(
          children: [
            resultContainer(),
            const SizedBox(height: 15),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(child: purpleButton(text: '+')),
                  Expanded(child: purpleButton(text: '-')),
                  Expanded(child: purpleButton(text: '×')),
                  Expanded(child: purpleButton(text: '÷')),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(child: purpleButton(text: '7')),
                  Expanded(child: purpleButton(text: '8')),
                  Expanded(child: purpleButton(text: '9')),
                  Expanded(child: purpleButton(text: 'C')),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: purpleButton(text: '4')),
                                Expanded(child: purpleButton(text: '5')),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: purpleButton(text: '1')),
                                Expanded(child: purpleButton(text: '2')),
                              ],
                            ),
                          ),
                          Expanded(child: purpleButton(text: '0')),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(child: purpleButton(text: '6')),
                          Expanded(child: purpleButton(text: '3')),
                          Expanded(child: purpleButton(text: '.')),
                        ],
                      )),
                  Expanded(flex: 1, child: purpleButton(text: '=')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container resultContainer() {
    final CalculatorController controller = Get.put(CalculatorController());

    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Obx(() => Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.operator.value.toText()),
                  Text(
                    controller.num1.value.isEmpty
                        ? '0'
                        : controller.num1.value.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget purpleButton({required String text}) {
    final CalculatorController controller = Get.put(CalculatorController());

    return InkWell(
      onTap: () {
        controller.onNumberTap(text);
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.all(2),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
