import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> customDialog({
  required String title,
  required String description,
  required Function() onTap,
  bool isReverse = false,
}) async {
  await Get.dialog(
    AlertDialog(
      elevation: 0,
      titlePadding: const EdgeInsets.all(
        0,
      ),
      insetPadding: const EdgeInsets.all(
        0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      backgroundColor: CustomColor.gs4,
      title: SizedBox(
        width: Get.width - 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Text(
              title,
              style: CustomTextStyle.subtitle1_700.copyWith(
                color: CustomColor.g800,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              description,
              style: CustomTextStyle.body3_400.copyWith(
                color: CustomColor.gs1,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: isReverse
                        ? () {
                            Get.back();
                          }
                        : onTap,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      color: isReverse ? CustomColor.g200 : CustomColor.p500,
                      alignment: Alignment.center,
                      child: Text(
                        isReverse ? '취소' : '확인',
                        style: CustomTextStyle.body1_400.copyWith(
                          color:
                              isReverse ? CustomColor.g800 : CustomColor.gs4,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: isReverse
                        ? onTap
                        : () {
                            Get.back();
                          },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      color: isReverse ? CustomColor.p500 : CustomColor.g200,
                      alignment: Alignment.center,
                      child: Text(
                        isReverse ? '확인' : '취소',
                        style: CustomTextStyle.body1_400.copyWith(
                          color:
                              isReverse ? CustomColor.gs4 : CustomColor.g800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    barrierDismissible: true,
  );
}
