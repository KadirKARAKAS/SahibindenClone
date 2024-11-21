import 'package:flutter/material.dart';
import 'package:sahibinden_clone/HomePage/Widget/additional%20_category_list_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/appbar_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/catagories_list_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: ScrollConfiguration(
            behavior: NoGlowScrollBehavior(),
            child: const Column(
              children: [
                AppBarWidget(),
                Expanded(
                  // Burada Expanded kullanarak alanı sınırlıyoruz.
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SearchWidget(),
                        SizedBox(height: 15),
                        CatagoriesListWidget(),
                        SizedBox(height: 15),
                        AdditionalCategoryListWidget(),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
