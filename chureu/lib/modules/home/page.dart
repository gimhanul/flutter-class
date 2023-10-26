import 'package:chureu/theme/colors.dart';
import 'package:chureu/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:chureu/widgets/dialog/custom_dialog.dart';
import 'package:chureu/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        body: Container(
          color: CustomColor.p50,
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onVerticalDragEnd: (details) => customDialog(
                      title: "...",
                      description: "거기좋아",
                      onCancelTap: () => listen(context),
                    onConfirmTap: () => Get..back()..back()
                  ),
                  onHorizontalDragEnd: (details) => customDialog(
                      title: "...",
                      description: "더해줘",
                      onCancelTap: () => listen(context),
                      onConfirmTap: () {
                        Get
                          ..back()
                          ..back();
                        customBottomSheet();
                      }),
                  onDoubleTap: () => customDialog(
                      title: "쫌찌르지말라고!",
                      description: "짜증나",
                      onCancelTap: () => listen(context),
                      onConfirmTap: () => Get..back()..back()
                  ),
                  onTap: () => customDialog(
                      title: "찌르지마",
                      description: "밥이나줘",
                      onCancelTap: () => listen(context),
                      onConfirmTap: () => Get..back()..back()
                  ),
                  child: Tooltip(
                      message: "고앵이",
                      child: Image.asset("assets/images/cute.png")))
            ],
          )),
        ));
  }

  Future<void> showToast(BuildContext context, String message) async {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(
          content: Text(message),
          duration: const Duration(milliseconds: 3000)));
  }

  listen(BuildContext context) {
    showToast(context, "말좀들어");
  }
}
