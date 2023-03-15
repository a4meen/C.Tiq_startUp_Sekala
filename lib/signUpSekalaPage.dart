import 'package:flutter/material.dart';
import 'package:sekala/loginPage.dart';
import 'package:sekala/mainResellerPage.dart';
import 'package:sekala/singUpPage.dart';

class signupPageSekalaPage extends StatelessWidget {
  const signupPageSekalaPage({super.key});

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
              const Text(
                'انشئ حساب',
                style: TextStyle(
                    fontFamily: "NotoKufiArabic",
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.12,
                child: TextField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffE5E5E5).withOpacity(0.5),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xff000000).withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "الاسم السكلة",
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
                  keyboardType: TextInputType.text,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                // const completeProfilePage()
                                const mainResellerPage())));
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8872D),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: const Text(
                      "انشئ حساب سكلة",
                      style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.035),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const loginWidget())));
                    },
                    child: const Text(
                      " سجل دخول",
                      style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color(0xffF8872D),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text(
                    " لديك حساب مسبقا؟",
                    style: TextStyle(
                        fontFamily: "NotoKufiArabic",
                        fontSize: 14,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const signupPage())));
                    },
                    child: const Text(
                      "قم بانشاء حساب",
                      style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color(0xffF8872D),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text(
                    " انشاء حساب عادي ؟",
                    style: TextStyle(
                        fontFamily: "NotoKufiArabic",
                        fontSize: 14,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
