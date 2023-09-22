import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void cusotmSnackBar({
  required String text,
}) {
  ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      elevation: 0,
      content: SafeArea(
        bottom: false,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: CustomTextStyle.body2_500.copyWith(
            color: CustomColor.gs4,
          ),
        ),
      ),
      backgroundColor: CustomColor.scSnack,
      duration: const Duration(milliseconds: 1000),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 40,
      ),
      padding: const EdgeInsets.all(
        13,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
    ),
  );
}
