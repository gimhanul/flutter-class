import 'package:boda/ui/main/boda_app.dart';
import 'package:get/get.dart';

List<GetPage> appRouter = [
  GetPage(
    name: '/',
    page: () => const BodaApp(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  )
];
