import 'package:flutter/material.dart';
import 'package:sekala/textStyle.dart';

var _currentIndex = 1;

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _categoryPageState();
}

class _categoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'الاصناف',
                    style: themeTextStyle(fontSize: 25).themeText,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6553,
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
                        onTap: () {},
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
