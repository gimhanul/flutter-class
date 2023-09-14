import 'package:flutter/material.dart';

class AppScrollBehavior extends ScrollBehavior {

  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}