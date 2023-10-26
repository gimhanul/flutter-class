import 'package:chureu/theme/colors.dart';
import 'package:chureu/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: CustomColor.g800,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "고앵이의",
                  style: CustomTextStyle.headline1_400.copyWith(
                    color: CustomColor.g50,
                  ),
                ),
                Text(
                  "애매한",
                  style: CustomTextStyle.headline1_400.copyWith(
                    color: CustomColor.g50,
                  ),
                ),
                Text(
                  "블랙카드?",
                  style: CustomTextStyle.headline1_400.copyWith(
                    color: CustomColor.g50,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
