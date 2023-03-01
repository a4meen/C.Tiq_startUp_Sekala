import 'package:flutter/material.dart';

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
            children: const [Text("data")],
          ),
        ),
      ),
    );
  }
}
