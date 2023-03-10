import 'package:flutter/material.dart';
import 'package:sekala/cartPage.dart';
import 'package:sekala/loginPage.dart';
import 'package:sekala/profileDetails.dart';
import 'package:sekala/textButton.dart';
import 'package:sekala/textStyle.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    DefaultTextButton defaultTextButton = DefaultTextButton();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.1),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color(0xffF8872D), width: 1)),
                        child: const ClipOval(
                          child: Image(
                            image: AssetImage("assets/images/person.png"),
                            fit: BoxFit.fill,
                          ),
                        )),
                    Text(
                      'الاسم',
                      style: themeTextStyle(fontSize: 14).themeText,
                    )
                  ],
                ),
              ),
            ),
            DefaultTextButton().ButtonText(
              mycontext: context,
              myAlign: Alignment.centerRight,
              myText: 'الملف الشخصي',
              buttonWidth: MediaQuery.of(context).size.width * 0.9,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const profileDetails())));
              },
            ),
            DefaultTextButton().ButtonText(
              mycontext: context,
              myText: 'العربة',
              myAlign: Alignment.centerRight,
              buttonWidth: MediaQuery.of(context).size.width * 0.9,
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const cartPage())));
              }),
            ),
            DefaultTextButton().ButtonText(
                mycontext: context,
                myText: 'الطلبات السابقة',
                buttonWidth: MediaQuery.of(context).size.width * 0.9,
                myAlign: Alignment.centerRight,
                onPressed: (() {})),
            DefaultTextButton().ButtonText(
              mycontext: context,
              myText: 'تسجيل خروج',
              buttonWidth: MediaQuery.of(context).size.width * 0.9,
              myAlign: Alignment.centerRight,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const loginWidget())));
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Text('APP version and licences ect.',
                style: themeTextStyle(fontSize: 10).themeText)
          ],
        ),
      ),
    ));
  }
}
