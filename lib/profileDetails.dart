import 'package:flutter/material.dart';
import 'package:sekala/completeProfile.dart';
import 'package:sekala/textButton.dart';

class profileDetails extends StatelessWidget {
  const profileDetails({super.key});

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
            DefaultTextButton().ButtonText(
              mycontext: context,
              myAlign: Alignment.centerRight,
              myText: 'معلومات الحساب',
              buttonWidth: MediaQuery.of(context).size.width * 0.9,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const completeProfilePage())));
              },
            ),
            DefaultTextButton().ButtonText(
              mycontext: context,
              myText: 'تغيير رقم الهاتف',
              myAlign: Alignment.centerRight,
              buttonWidth: MediaQuery.of(context).size.width * 0.9,
              onPressed: (() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: ((context) => )));
              }),
            ),
            DefaultTextButton().ButtonText(
                mycontext: context,
                myText: 'تغيير كلمة السر',
                buttonWidth: MediaQuery.of(context).size.width * 0.9,
                myAlign: Alignment.centerRight,
                onPressed: (() {})),
            DefaultTextButton().ButtonText(
              mycontext: context,
              myText: 'الموقع',
              buttonWidth: MediaQuery.of(context).size.width * 0.9,
              myAlign: Alignment.centerRight,
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: ((context) => )));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
