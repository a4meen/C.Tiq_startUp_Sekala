import 'package:flutter/material.dart';

class themeTextStyle {
  final double? fontSize;
  final color;

  themeTextStyle({required this.fontSize, this.color = Colors.black});

  TextStyle get themeText {
    return TextStyle(
      fontFamily: "NotoKufiArabic",
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }
}
