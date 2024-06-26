import 'package:flutter/material.dart';
import 'package:sekala/controllers/api_services.dart';
import 'package:sekala/singUpPage.dart';
import 'package:sekala/textStyle.dart';

TextEditingController enteredName = TextEditingController();
TextEditingController enteredNumber = TextEditingController();
TextEditingController enteredPass = TextEditingController();
// TextEditingController enteredEmail = TextEditingController();
late String enteredEmail;

class completeProfilePage extends StatelessWidget {
  const completeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    enteredName.text = userName;
    enteredNumber.text = userNumber;
    enteredPass.text = userPass;

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
                    controller: enteredName,
                    readOnly: true,
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
                        hintStyle: themeTextStyle(fontSize: 12).themeText),
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
                    readOnly: true,
                    controller: enteredNumber,
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
                        hintStyle: themeTextStyle(fontSize: 12).themeText),
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
                    controller: enteredPass,
                    readOnly: true,
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
                        hintStyle: themeTextStyle(fontSize: 12).themeText),
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
                    onChanged: (value) {
                      enteredEmail = value;
                    },
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
                        labelText: "الايميل",
                        hintStyle: themeTextStyle(fontSize: 12).themeText),
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
                        labelText: "العنوان",
                        hintStyle: themeTextStyle(fontSize: 20).themeText),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              TextButton(
                  onPressed: (() {
                    ApiServieces().Future();
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: ((context) => const mainPage())));
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8872D),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Text(
                      "استمر",
                      style: themeTextStyle(fontSize: 14).themeText,
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
