import 'package:boda/ui/theme/colors.dart';
import 'package:boda/ui/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: CustomColor.p500,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("BODA",
              style: CustomTextStyle.headline1_700
          )
        ],
      ),
    );
  }
}
