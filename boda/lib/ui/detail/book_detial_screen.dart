import 'package:boda/ui/_constant/appbar/custom_app_bar.dart';
import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/thumbnail/book_thumbnail.dart';
import 'package:boda/ui/detail/widgets/book_detail_contents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetailScreen extends StatelessWidget {
  final int itemId = int.parse(Get.parameters['itemId'].toString());
  final bool isReport = bool.parse(Get.parameters['isReport'].toString());
  BookDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.gs4,
      appBar: customAppBar(
        isReport: isReport,
        itemId: itemId,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: bookDetailThumbnail(
                isReport: isReport,
                title: '$itemId 이상한 세상에서',
                author: '저자이름',
              ),
            ),
            bookDetailContents(
              title: '책소개',
              description: 'ㄴㄴㄴㅇㄴㄴ',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: Divider(
                height: 10,
                thickness: 10,
                color: CustomColor.g200,
              ),
            ),
            bookDetailContents(
              title: '독후감',
              description: 'ㄴㄴㄴㅇㄴㄴ',
            ),
          ],
        ),
      ),
    );
  }
}
