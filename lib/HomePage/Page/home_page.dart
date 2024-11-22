import 'package:flutter/material.dart';
import 'package:sahibinden_clone/HomePage/Widget/additional%20_category_list_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/appbar_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/catagories_list_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/homepage_showcase_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/latest_ads_widget.dart';
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
            child: Column(
              children: [
                const AppBarWidget(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SearchWidget(),
                        const SizedBox(height: 15),
                        const CatagoriesListWidget(),
                        const SizedBox(height: 15),
                        const AdditionalCategoryListWidget(),
                        const SizedBox(height: 15),
                        const HomepageShowcaseWidget(),
                        const SizedBox(height: 25),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "İLGİLENEBİLECEĞİNİZ İLANLAR",
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            )),
                        LatestAdsWidget()
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
