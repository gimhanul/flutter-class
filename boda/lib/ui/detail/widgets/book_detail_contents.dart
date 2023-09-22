import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding bookDetailContents({
  required String title,
  required String description,
  List<String>? imageUrls,
  String? date,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: CustomTextStyle.subtitle1_700.copyWith(
                color: CustomColor.g800,
              ),
            ),
            if (date != null) ...[
              Text(
                date,
                style: CustomTextStyle.body3_400.copyWith(
                  color: CustomColor.g400,
                ),
              ),
            ]
          ],
        ),
        if (imageUrls != null) ...[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: imageUrls.length > 1
                      ? const PageScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      for (int i = 0; i < 2; i++) ...[
                        Container(
                          width: Get.width - 40,
                          height: Get.width - 40,
                          color: i % 2 == 0 ? CustomColor.gs2 : CustomColor.gs1,
                        ),
                      ],
                    ],
                  ),
                ),
                if (imageUrls.length > 1) ...[
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: CustomColor.gs3,
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                      ),
                      child: Text(
                        '1/2',
                        style: CustomTextStyle.body3_500.copyWith(
                          color: CustomColor.gs4,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ] else ...[
          const SizedBox(
            height: 8,
          ),
        ],
        Text(
          description,
          style: CustomTextStyle.body2_400.copyWith(
            color: CustomColor.g800,
          ),
        ),
      ],
    ),
  );
}
