import 'package:flutter/material.dart';

Color primary = const Color(0xFF013F7D);

class Styles {
  static Color primaryColor = primary;
  static Color secondaryColor = const Color(0xffBA8C0A);

  static Color textColor =Colors.black87;

  static Color bgColor = const Color(0xFFeeedf2);

  static Color blueColor = primary;
  static Color orangeColor = const Color(0xFFADF0D1);
  static Color kakiColor = const Color(0xFFd2bdd6);
  static Color textInPrimary = orangeColor;
  static Color textInSecondary = primary;

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
