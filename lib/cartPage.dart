import 'package:flutter/material.dart';
import 'package:sekala/textStyle.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.black,
            ),
            body: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      'العربة',
                      style: themeTextStyle(fontSize: 25).themeText,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing:
                              MediaQuery.of(context).size.height * 0.03,
                          crossAxisSpacing:
                              MediaQuery.of(context).size.width * 0.1,
                          childAspectRatio: 0.8,
                          crossAxisCount: 2),
                      itemBuilder: ((context, index) {
                        return GridTile(
                            child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => const itemPage())));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffE5E5E5),
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.5))),
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: constraints.maxHeight * 0.6,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.cyan,
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: const Image(
                                      image: AssetImage(
                                          "assets/images/materialPicture.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: Text(
                                        'المادة $index',
                                        overflow: TextOverflow.ellipsis,
                                        style: themeTextStyle(fontSize: 12)
                                            .themeText,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: Text(
                                        'وصف للمادة او كلام $index وصف للمادة او كلام $index وصف للمادة او كلام $index',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: themeTextStyle(fontSize: 10)
                                            .themeText,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),
                        ));
                      })),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05,
                      // bottom: MediaQuery.of(context).size.height * 0.02,
                    ),
                    child: Text(
                      'السعر الكلي',
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
                      'دينار 2222',
                      style: themeTextStyle(fontSize: 20).themeText,
                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                      width: MediaQuery.of(context).size.width * 0.8,
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
              ],
            )));
  }
}
