import 'package:flutter/material.dart';
import 'package:sekala/textStyle.dart';

class storePage extends StatelessWidget {
  const storePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 10),
                child: Text(
                  'اسم المتجر',
                  style: themeTextStyle(fontSize: 25).themeText,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.815,
              width: MediaQuery.of(context).size.width * 0.8,
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing:
                          MediaQuery.of(context).size.height * 0.03,
                      crossAxisSpacing: MediaQuery.of(context).size.width * 0.1,
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
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
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
                                    'وصف للمادة او كلام $index وصف للمادة او كلام $index وصف للمادة او كلام $index',
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
                      ),
                    ));
                  })),
            )
          ],
        ),
      ),
    );
  }
}
