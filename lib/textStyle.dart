import 'package:flutter/material.dart';

TextStyle themeTextStyle({
  String fontFamily = "NotoKufiArabic",
  double fontSize = 14,
  Color color = const Color(0xff000000),
  FontWeight fontWeight = FontWeight.w400,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}
