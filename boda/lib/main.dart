import 'package:boda/state/_constant/boda/init_binding.dart';
import 'package:boda/ui/_constant/theme/app_scroll_behavior.dart';
import 'package:boda/ui/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Boda());
}

class Boda extends StatelessWidget {
  const Boda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
        return ScrollConfiguration(
            behavior: AppScrollBehavior(),
            child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child ?? const SizedBox()));
      },
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark),
        fontFamily: 'SpoqaHanSansNeo',
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        // 반응형
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.cupertino,
      initialBinding: InitBinding(),
      initialRoute: '/',
      getPages: appRouter,
    );
  }
}
