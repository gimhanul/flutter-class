import 'package:flutter/material.dart';

class AppScrollBehavior extends ScrollBehavior {
  // 디폴트 스크롤 효과 제거
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
