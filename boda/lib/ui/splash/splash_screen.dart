import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: CustomColor.p500,
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
            ),
            child: DefaultTextStyle(
              style: CustomTextStyle.headline1_700.copyWith(
                color: CustomColor.gs4,
              ),
              child: const Text(
                'BODA',
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 32,
            ),
            child: DefaultTextStyle(
              style: CustomTextStyle.caption.copyWith(
                color: CustomColor.gs4,
              ),
              child: const Text(
                'Created by Hanul',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
