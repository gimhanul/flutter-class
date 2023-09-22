import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';

GestureDetector wideSquareBoxWithText({
  required String text,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(
        bottom: 24,
      ),
      width: double.infinity,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8,),
        color: CustomColor.p500,
      ),
      child: Text(
        text,
        style: CustomTextStyle.body2_500.copyWith(
          color: CustomColor.gs4,
        ),
      ),
    ),
  );
}