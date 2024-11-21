import 'package:flutter/material.dart';
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
        body: const Column(
          children: [
            AppBarWidget(),
            SearchWidget(),
            SizedBox(height: 15),
            CatagoriesListWidget(),
          ],
        ));
  }
}
