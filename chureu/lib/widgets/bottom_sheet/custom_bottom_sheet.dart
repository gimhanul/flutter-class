import 'package:chureu/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/text_style.dart';

void customBottomSheet() {
  Get.bottomSheet(Column(
    children: [
      GestureDetector(
        onVerticalDragEnd: (details) {
          Get.back();
        },
        child: Container(
          color: Colors.black,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Text(
              "고앵이의 블랙카드",
              style: CustomTextStyle.headline1_400.copyWith(
                color: CustomColor.g50,
              ),
            ),
          ),
        ),
      )
    ],
  ));
}
