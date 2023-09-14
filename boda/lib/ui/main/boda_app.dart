import 'package:boda/state/_constant/boda/boda_getx.dart';
import 'package:boda/state/auth/auth_getx.dart';
import 'package:boda/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../auth/sign_up/sign_up_screen.dart';
import 'main_screen.dart';

class BodaApp extends StatelessWidget {
  const BodaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return GetBuilder<BodaGetx>(builder: (boda) {
      // version check
      if (boda.isVersionChecking) {
        // splash
        return const SplashScreen();
      }
      // login check
      return GetBuilder<AuthGetx>(builder: (x) {
        // splash
        if (x.isSplash) {
          return const SplashScreen();
        }

        if (x.isGoToMain) {
          return const MainScreen();
        }

        return const SignUpScreen();
      });
    });
  }
}
