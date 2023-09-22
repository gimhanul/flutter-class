import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainGetx extends GetxController {
  static MainGetx get to => Get.find();
  RefreshController refreshController = RefreshController();
  int itemCount = 10;

  void onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000,), () {
      itemCount = 10;
      update();
    });
    print('리프레쉬 했음');
    refreshController.refreshCompleted();
  }

  void onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000,), () {
      itemCount = itemCount + 11;
      update();
    });
    print('로딩 했음');
    refreshController.loadComplete();
  }
}