import 'dart:io';
import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

GestureDetector imageContainer({
  Function()? getImage,
  Function()? removeImage,
  String? imagePath,
}) {
  return GestureDetector(
    onTap: getImage ?? () {},
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: imagePath != null
            ? null
            : Border.all(
                width: 2,
                color: CustomColor.p500,
              ),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      child: imagePath != null
          ? Stack(
              children: [
                Image.file(
                  File(imagePath),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: CustomColor.gs2,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: GestureDetector(
                    onTap: removeImage ?? () {},
                    child: SvgPicture.asset(
                      'assets/svg/cancel.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            )
          : SvgPicture.asset(
              'assets/svg/plus.svg',
              width: 24,
              height: 24,
            ),
    ),
  );
}
