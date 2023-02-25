import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sekala/textStyle.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  // themeTextStyle myTextStyle = themeTextStyle(fontSize: 14);

  // final myTextStyle = const themeTextStyle(fontSize: 8);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Image(
            image: AssetImage("assets/images/سكلة.png"),
            height: 50,
          ),
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.account_circle_outlined),
              color: Colors.black,
              iconSize: 35,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'المواد النشطة',
                    style: TextStyle(
                        fontFamily: "NotoKufiArabic",
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
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
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'المتاجر',
                    style: TextStyle(
                        fontFamily: "NotoKufiArabic",
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3935,
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
                                      "assets/images/sekalaName1.jpg"),
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
                                    style: const TextStyle(
                                        fontFamily: "NotoKufiArabic",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
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
                                    style: themeTextStyle(fontSize: 10),
                                    // const TextStyle(
                                    //     fontFamily: "NotoKufiArabic",
                                    //     fontSize: 10,
                                    //     fontWeight: FontWeight.w400),
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
        bottomNavigationBar: Container(
          height: 50,
          padding: const EdgeInsets.only(bottom: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              color: const Color(0xffF8872D),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (() {}),
                icon: const Image(
                    image: AssetImage("assets/images/homeIcon.png")),
              ),
              IconButton(
                onPressed: (() {}),
                icon: const Image(
                    image: AssetImage("assets/images/categoryIcon.png")),
              ),
              IconButton(
                onPressed: (() {}),
                icon: const Image(
                    image: AssetImage("assets/images/searchIcon.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
