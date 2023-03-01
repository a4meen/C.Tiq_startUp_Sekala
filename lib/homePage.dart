import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sekala/categoryPage.dart';
import 'package:sekala/searchPage.dart';
import 'package:sekala/textStyle.dart';

final List<Widget> screens = [
  const homePage(),
  const CategoryPage(),
  const searchPage()
];
var _currentIndex = 0;

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  // themeTextStyle myTextStyle = themeTextStyle(fontSize: 14);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   centerTitle: true,
        //   title: const Image(
        //     image: AssetImage("assets/images/سكلة.png"),
        //     height: 50,
        //   ),
        //   actions: [
        //     IconButton(
        //       onPressed: (() {}),
        //       icon: const Icon(Icons.account_circle_outlined),
        //       color: Colors.black,
        //       iconSize: 35,
        //     )
        //   ],
        // ),

        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'المواد النشطة',
                    style: themeTextStyle(fontSize: 20).themeText,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: ((context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.0001,
                      );
                    }),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: ListTile(
                          onTap: () {},
                          title: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.19,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                            clipBehavior: Clip.hardEdge,
                            child: const Image(
                              image: AssetImage("assets/images/tabok.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'المتاجر',
                    style: themeTextStyle(fontSize: 20).themeText,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.37544,
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
                          child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffE5E5E5),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5))),
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: constraints.maxHeight * 0.55,
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
                              RatingBar.builder(
                                itemBuilder: ((context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )),
                                onRatingUpdate: ((rating) {}),
                                ignoreGestures: true,
                                itemCount: 5,
                                minRating: 1,
                                initialRating: 2,
                                itemSize: 15,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 2),
                                  child: Text(
                                    'متجر $index',
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        themeTextStyle(fontSize: 12).themeText,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 2),
                                  child: Text(
                                    'وصف للمتجر او كلام $index وصف للمتجر او كلام $index وصف للمتجر او كلام $index',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style:
                                        themeTextStyle(fontSize: 10).themeText,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ));
                    })),
              )
            ],
          ),
        ),

        // bottomNavigationBar: FloatingNavbar(
        //   margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        //   fontSize: 10,
        //   iconSize: 12,
        //   selectedBackgroundColor: const Color(0xffE5E5E5).withOpacity(0.5),
        //   unselectedItemColor: Colors.black,
        //   backgroundColor: const Color(0xffF8872D),
        //   currentIndex: _currentIndex,
        //   onTap: (i) => setState(() => _currentIndex = i),
        //   items: [
        //     FloatingNavbarItem(
        //         customWidget: const Image(
        //           image: AssetImage("assets/images/homeIcon.png"),
        //           width: 25,
        //           height: 25,
        //         ),
        //         title: "الصفحة الرئيسية"),
        //     FloatingNavbarItem(
        //         customWidget: const Image(
        //           image: AssetImage("assets/images/categoryIcon.png"),
        //           width: 25,
        //           height: 25,
        //         ),
        //         title: "الاصناف"),
        //     FloatingNavbarItem(
        //         customWidget: const Image(
        //           image: AssetImage("assets/images/searchIcon.png"),
        //           width: 25,
        //           height: 25,
        //         ),
        //         title: "البحث"),
        //   ],
        // ),
      ),
    );
  }
}
