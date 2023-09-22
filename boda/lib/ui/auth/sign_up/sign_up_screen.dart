import 'package:boda/state/auth/auth_getx.dart';
import 'package:boda/ui/_constant/button/app_custom_button.dart';
import 'package:boda/ui/_constant/theme/colors.dart';
import 'package:boda/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthGetx>(builder: (x) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: CustomColor.gs4,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 80,
                            bottom: 16,
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
                                  text: '을 입력하세요.',
                                  style: CustomTextStyle.headline1_700.copyWith(
                                    color: CustomColor.g800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: CustomColor.gs4,
                            border: Border.all(
                              color: CustomColor.g800,
                            ),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 9,
                                horizontal: 16,
                              ),
                              hintText: '이름이 뭐예요?',
                              hintStyle: CustomTextStyle.body2_500.copyWith(
                                color: CustomColor.gs2,
                              ),
                              border: InputBorder.none,
                            ),
                            style: CustomTextStyle.body2_500.copyWith(
                              color: CustomColor.g800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  wideSquareBoxWithText(
                    text: '완료',
                    onTap: () => x.signUpName(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
