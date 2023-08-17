import 'package:get/get.dart';

class SimpleController extends GetxController {
  int value = 0;

  void plus() {
    value++;
    update();
  }

  void minus() {
    value--;
    update();
  }
}
