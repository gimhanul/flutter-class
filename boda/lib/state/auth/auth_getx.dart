import 'package:get/get.dart';

class AuthGetx extends GetxController {
  static AuthGetx get to => Get.find();

  bool isSplash = true;
  bool isGoToMain = false;

  Future authAppVersionCheck() async {
  }
}