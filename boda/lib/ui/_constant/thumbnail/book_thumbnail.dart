import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

GestureDetector bookListThumbnail({
  required bool isReport,
  required int itemId,
  required String title,
  required String categoryAuthor,
}) {
  return GestureDetector(
    onTap: () {
      Get.toNamed('/book/$itemId?isReport=$isReport');
    },
    child: Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: ((Get.width - 56) / 2) + 5,
            ),
            Container(
              width: (Get.width - 56) / 2,
              height: (((Get.width - 56) / 2) * 248) / 167,
              decoration: BoxDecoration(
                color: CustomColor.gs4,
                borderRadius: BorderRadius.circular(
                  8,
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8.0,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isReport,
              child: Positioned(
                top: 8,
                right: 0,
                child: Image.asset(
                  'assets/images/book_report.png',
                  width: 40,
                  height: 40,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: SizedBox(
            width: ((Get.width - 56) / 2) + 5,
            child: Text(
              title,
              style: CustomTextStyle.body1_500.copyWith(
                color: CustomColor.g800,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Container(
          width: ((Get.width - 56) / 2) + 5,
          alignment: Alignment.centerRight,
          child: Text(
            categoryAuthor,
            style: CustomTextStyle.body3_400.copyWith(
              color: CustomColor.g400,
            ),
            maxLines: 2,
          ),
        ),
      ],
    ),
  );
}

Padding bookDetailThumbnail({
  required bool isReport,
  required String title,
  required String author,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Column(
      children: [
        Stack(
          children: [
            const SizedBox(
              width: 235,
            ),
            Container(
              width:  230,
              height: 342,
              decoration: BoxDecoration(
                color: CustomColor.gs4,
                borderRadius: BorderRadius.circular(
                  8,
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8.0,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isReport,
              child: Positioned(
                top: 8,
                right: 0,
                child: Image.asset(
                  'assets/images/book_report.png',
                  width: 40,
                  height: 40,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 8,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              title,
              style: CustomTextStyle.headline3_700.copyWith(
                color: CustomColor.g800,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            author,
            style: CustomTextStyle.caption.copyWith(
              color: CustomColor.gs2,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
