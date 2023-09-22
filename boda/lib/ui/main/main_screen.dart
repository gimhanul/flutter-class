import 'dart:io';

import 'package:boda/state/main/main_getx.dart';
import 'package:boda/ui/_constant/footer/custom_refresh_footer.dart';
import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:boda/ui/_constant/thumbnail/book_thumbnail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainGetx>(
      builder: (x) {
        return Scaffold(
          backgroundColor: CustomColor.gs4,
          body: SafeArea(
            child: SmartRefresher(
              enablePullDown: Platform.isIOS ? false : true,
              enablePullUp: true,
              controller: x.refreshController,
              onRefresh: () {
                x.onRefresh();
              },
              onLoading: () {
                x.onLoading();
              },
              footer: customRefreshFooter(
                isLastItem: false,
              ),
              header: MaterialClassicHeader(
                color: CustomColor.p500,
              ),
              child: CustomScrollView(
                slivers: [
                  if (Platform.isIOS) ...[
                    CupertinoSliverRefreshControl(
                      refreshTriggerPullDistance: 40.0,
                      refreshIndicatorExtent: 30.0,
                      onRefresh: () async {
                        x.onRefresh();
                      },
                    ),
                  ],
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 72,
                        bottom: 16,
                        left: 20,
                        right: 20,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: '안녕하세요.\n',
                          style: CustomTextStyle.headline1_700.copyWith(
                            color: CustomColor.g800,
                          ),
                          children: [
                            TextSpan(
                              text: '이름',
                              style: CustomTextStyle.headline1_700.copyWith(
                                color: CustomColor.p500,
                              ),
                            ),
                            TextSpan(
                              text: '님!',
                              style: CustomTextStyle.headline1_700.copyWith(
                                color: CustomColor.g800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 32,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                bookListThumbnail(
                                  isReport: true,
                                  itemId: index * 2,
                                  title: '${index * 2} 이상한 세상에서',
                                  categoryAuthor: '카테고리 · 저자',
                                ),
                                if ((index * 2) + 1 < x.itemCount) ...[
                                  bookListThumbnail(
                                    isReport: false,
                                    itemId: (index * 2) + 1,
                                    title: '${(index * 2) + 1} 이상한 세상에서',
                                    categoryAuthor: '카테고리 · 저자',
                                  ),
                                ],
                              ],
                            ),
                          );
                        },
                        addAutomaticKeepAlives: true,
                        childCount: (x.itemCount % 2 == 0
                            ? x.itemCount ~/ 2
                            : (x.itemCount ~/ 2) + 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
