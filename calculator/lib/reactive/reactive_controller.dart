import 'package:get/get.dart';

class ReactiveController extends GetxController {
  RxInt value = 0.obs;

  plus() => value.value++;
  minus() => value.value--;
}