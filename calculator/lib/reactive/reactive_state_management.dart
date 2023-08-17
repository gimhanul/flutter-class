import 'package:calculator/reactive/reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateManagement extends StatelessWidget {
  const ReactiveStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ReactiveController controller = Get.put(ReactiveController());
    return Scaffold(
      appBar: AppBar(title: const Text('반응형 상태관리')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  controller.minus();
                }, icon: const Icon(Icons.arrow_back_ios)),
            Obx(() => Text('value: ${controller.value}')),
            IconButton(
                onPressed: () {
                  controller.plus();
                },
                icon: const Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}
