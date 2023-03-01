import 'package:flutter/material.dart';
import 'package:sekala/mainPage.dart';
import 'package:sekala/singUpPage.dart';

class loginWidget extends StatelessWidget {
  const loginWidget({super.key});

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
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const Text(
                'تسجيل الدخول',
                style: TextStyle(
                    fontFamily: "NotoKufiArabic",
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xff000000).withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "الهاتف",
                      hintStyle: const TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xff000000).withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "كلمة السر",
                      hintStyle: const TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              TextButton(
                  onPressed: (() {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const mainPage())));
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8872D),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: const Text(
                      "سجل الدخول",
                      style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const signupPage())));
                    },
                    child: const Text(
                      " قم بالتسجيل",
                      style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color(0xffF8872D),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text(
                    " ليس لديك حساب؟",
                    style: TextStyle(
                        fontFamily: "NotoKufiArabic",
                        fontSize: 14,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
