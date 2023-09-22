import 'package:flutter/material.dart';

const MaterialColor bodaPrimarySwatch = MaterialColor(
  0xFF5B84FF,
  <int, Color>{
    50: Color(0xFF5B84FF),
    100: Color(0xFF5B84FF),
    200: Color(0xFF5B84FF),
    300: Color(0xFF5B84FF),
    400: Color(0xFF5B84FF),
    500: Color(0xFF5B84FF),
    600: Color(0xFF5B84FF),
    700: Color(0xFF5B84FF),
    800: Color(0xFF5B84FF),
    900: Color(0xFF5B84FF),
  },
);

class CustomColor {
  /* Primary Color */
  static Color p500 = const Color(0xFF5B84FF);
  static Color p400 = const Color(0xFF83A5FF);
  static Color p300 = const Color(0xFF9CBAFF);
  static Color p200 = const Color(0xFFBDD2FF);
  static Color p100 = const Color(0xFFDEE9FF);

  /* Gray Color */
  static Color g800 = const Color(0xFF101028);
  static Color g700 = const Color(0xFF1A1A31);
  static Color g600 = const Color(0xFF2A2A3D);
  static Color g500 = const Color(0xFF3D3D49);
  static Color g400 = const Color(0xFF727275);
  static Color g300 = const Color(0xFFCACACC);
  static Color g200 = const Color(0xFFECECEE);
  static Color g100 = const Color(0xFFF5F5F6);

  /* Gray Sub Color */
  static Color gs1 = const Color(0xFF495057);
  static Color gs2 = const Color(0xFF979FA6);
  static Color gs3 = const Color(0xFF3D3D49).withOpacity(0.1);
  static Color gs4 = const Color(0xFFFFFFFF);

  /* Sub Color */
  static Color scSub = const Color(0xFF787BDD);
  static Color scSnack = const Color(0xFF056BDB);
  static Color scError = const Color(0xFFDB2E20);
}
