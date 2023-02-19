import 'package:flutter/material.dart';

class completeProfilePage extends StatelessWidget {
  const completeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Image(image: AssetImage("assets/images/سكلة.png")),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xff000000).withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "الاسم الكامل",
                        hintStyle: const TextStyle(
                            fontFamily: "NotoKufiArabic",
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xff000000).withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "الهاتف",
                        hintStyle: const TextStyle(
                            fontFamily: "NotoKufiArabic",
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xff000000).withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "كلمة السر",
                        hintStyle: const TextStyle(
                            fontFamily: "NotoKufiArabic",
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xff000000).withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "الجنس",
                        hintStyle: const TextStyle(
                            fontFamily: "NotoKufiArabic",
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xff000000).withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "العنوان",
                        hintStyle: const TextStyle(
                            fontFamily: "NotoKufiArabic",
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              TextButton(
                  onPressed: (() {}),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8872D),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: const Text(
                      "استمر",
                      style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
