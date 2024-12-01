import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sahibinden_clone/GlobalWidgets/catagories_appbar_widget.dart';
import 'package:sahibinden_clone/HomePage/Widget/appbar_widget.dart';

class PropertyFirstPage extends StatefulWidget {
  const PropertyFirstPage({super.key});

  @override
  State<PropertyFirstPage> createState() => _PropertyFirstPageState();
}

class _PropertyFirstPageState extends State<PropertyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CatagoriesAppbarWidget(), Text("data")],
      ),
    );
  }
}
