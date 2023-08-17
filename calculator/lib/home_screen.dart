import 'package:calculator/calculator/calculator_screen.dart';
import 'package:calculator/reactive/reactive_state_management.dart';
import 'package:calculator/simple/simple_state_management.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: (){
              Get.to(() => const SimpleStateManagement());
            }, child: const Text('단순 상태관리')),
            TextButton(onPressed: (){
              Get.to(() => const ReactiveStateManagement());
            }, child: const Text('반응형 상태관리')),
            TextButton(onPressed: (){
              Get.to(() => const CalculatorScreen());
            }, child: const Text('계산기 만들기')),
          ],
        ),
      ),
    );
  }
}
