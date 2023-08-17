import 'package:calculator/simple/simple_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SimpleController>(
        init: SimpleController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(title: const Text('단순 상태관리')),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.minus();
                      }, icon: const Icon(Icons.arrow_back_ios)),
                  Text('value: ${controller.value}'),
                  IconButton(
                      onPressed: () {
                        controller.plus();
                      },
                      icon: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
          );
        });
  }
}
