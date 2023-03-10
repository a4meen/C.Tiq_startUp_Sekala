import 'package:flutter/material.dart';
import 'package:sekala/categoryPage.dart';
import 'package:sekala/homePage.dart';
import 'package:sekala/profilePage.dart';
import 'package:sekala/searchPage.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

final List<Widget> screens = [
  const homePage(),
  const CategoryPage(),
  const SearchPage()
];
var _currentIndex = 0;

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _homePageState();
}

class _homePageState extends State<mainPage> {
  // themeTextStyle myTextStyle = themeTextStyle(fontSize: 14);
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
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const profilePage())));
              }),
              icon: const Icon(Icons.account_circle_outlined),
              color: Colors.black,
              iconSize: 35,
            )
          ],
        ),
        body: screens[_currentIndex],
        bottomNavigationBar: FloatingNavbar(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          fontSize: 10,
          iconSize: 12,
          selectedBackgroundColor: const Color(0xffE5E5E5).withOpacity(0.5),
          unselectedItemColor: Colors.black,
          backgroundColor: const Color(0xffF8872D),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            FloatingNavbarItem(
                customWidget: const Image(
                  image: AssetImage("assets/images/homeIcon.png"),
                  width: 25,
                  height: 25,
                ),
                title: "الصفحة الرئيسية"),
            FloatingNavbarItem(
                customWidget: const Image(
                  image: AssetImage("assets/images/categoryIcon.png"),
                  width: 25,
                  height: 25,
                ),
                title: "الاصناف"),
            FloatingNavbarItem(
                customWidget: const Image(
                  image: AssetImage("assets/images/searchIcon.png"),
                  width: 25,
                  height: 25,
                ),
                title: "البحث"),
          ],
        ),
      ),
    );
  }
}
