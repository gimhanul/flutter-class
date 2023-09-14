import 'package:get/get.dart';

class BodaGetx extends GetxController {
  static BodaGetx get to => Get.find();

  bool isVersionChecking = false;

  Future bodaAppVersionCheck() async {
    isVersionChecking = true;
    update();
  }
}