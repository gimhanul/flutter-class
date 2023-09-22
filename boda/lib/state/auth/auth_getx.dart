import 'package:boda/ui/main/main_screen.dart';
import 'package:get/get.dart';

class AuthGetx extends GetxController {
  static AuthGetx get to => Get.find();

  bool isSplash = true;
  bool isGoToMain = false;

  Future authAppVersionCheck() async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      isSplash = false;
      update();
      // todo - local storage에 이름을 적은 적ㅇ ㅣ있는지 확인하는 함수 작성
    });
  }

  Future signUpName() async {
    // todo - local storage에 이름 저장
    Get.offAll(() => const MainScreen());
  }
}
