import 'package:flutter/material.dart';

// class CustomTextLogo {
//   static const TextStyle logo = TextStyle(
//       fontSize: 10,
//       color: Colors.red,
//       fontWeight: FontWeight.bold,
//       fontFamily: "Lato");
// }

class themeTextStyle {
  double? fontSize;

  themeTextStyle({required this.fontSize});

  TextStyle themeText = TextStyle(
    fontFamily: "NotoKufiArabic",
    fontSize: fontSize,
    color: const Color.fromARGB(255, 4, 16, 241),
    fontWeight: FontWeight.w400,
  );
}
