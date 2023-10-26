import 'package:get/get.dart';

import '../modules/home/binding.dart';
import '../modules/home/page.dart';


part 'routes.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
