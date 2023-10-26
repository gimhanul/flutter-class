import 'package:chureu/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: '심청이',
    initialRoute: Routes.home,
    getPages: Pages.pages,
  ));
}
