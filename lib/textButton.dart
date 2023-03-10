import 'package:flutter/material.dart';

class DefaultTextButton {
  TextButton ButtonText({
    required String myText,
    required BuildContext mycontext,
    String? buttonText,
    Color? buttonColor,
    double? buttonWidth,
    double? buttonHeight,
    TextStyle? textStyle,
    VoidCallback? onPressed,
    AlignmentGeometry? myAlign = Alignment.center,
  }) {
    // TextButton ButtonText(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.only(
            right: MediaQuery.of(mycontext).size.width * 0.03,
            left: MediaQuery.of(mycontext).size.width * 0.03),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black.withOpacity(0.5)),
            color: const Color(0xffF8872D),
            borderRadius: BorderRadius.circular(10)),
        alignment: myAlign,
        width: buttonWidth ??= MediaQuery.of(mycontext).size.width * 0.7,
        height: MediaQuery.of(mycontext).size.height * 0.05,
        child: Text(
          myText,
          style: const TextStyle(
              fontFamily: "NotoKufiArabic",
              fontSize: 14,
              color: Color(0xff000000),
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
