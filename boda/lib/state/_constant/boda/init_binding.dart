import 'package:boda/state/_constant/boda/boda_getx.dart';
import 'package:boda/state/auth/auth_getx.dart';
import 'package:boda/state/main/main_getx.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthGetx());
    Get.put(BodaGetx()..bodaAppVersionCheck());
    Get.put(MainGetx());
  }
}
