import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sekala/cartPage.dart';
import 'package:sekala/textStyle.dart';

int i = 5000;

class itemPage extends StatelessWidget {
  const itemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE5E5E5),
                    border: Border.all(color: Colors.black.withOpacity(0.5))),
                clipBehavior: Clip.hardEdge,
                child: const Image(
                  image: AssetImage("assets/images/materialPicture.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: RatingBar.builder(
                      itemBuilder: ((context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          )),
                      onRatingUpdate: ((rating) {}),
                      ignoreGestures: true,
                      itemCount: 5,
                      minRating: 1,
                      initialRating: 2,
                      itemSize: 25,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.05,
                          bottom: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'اسم المادة',
                        style: themeTextStyle(fontSize: 25).themeText,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Text(
                    'الوصف',
                    style: themeTextStyle(fontSize: 25).themeText,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                    'وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها وصف للمادة وشرح عنها ',
                    style: themeTextStyle(fontSize: 12).themeText,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                    'السعر',
                    style: themeTextStyle(fontSize: 25).themeText,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                    'دينار $i',
                    style: themeTextStyle(fontSize: 20).themeText,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (() {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: ((context) =>
                        //             const completeProfilePage())));
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF8872D),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: const Text(
                          "اضافة الى العربة",
                          style: TextStyle(
                              fontFamily: "NotoKufiArabic",
                              fontSize: 14,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  IconButton(
                      onPressed: (() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const cartPage())));
                      }),
                      icon: Image.asset('assets/images/cart.png'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
