import 'package:flutter/material.dart';
import 'package:sahibinden_clone/GlobalWidgets/catagories_appbar_widget.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Widget/property_detail_catagories_widget.dart';

class PropertyDetailCatagoriesPage extends StatefulWidget {
  const PropertyDetailCatagoriesPage({super.key});

  @override
  State<PropertyDetailCatagoriesPage> createState() =>
      _PropertyDetailCatagoriesPageState();
}

class _PropertyDetailCatagoriesPageState
    extends State<PropertyDetailCatagoriesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatagoriesAppbarWidget(),
            PropertyDetailCatagoriesWidget()
          ],
        ),
      ),
    );
  }
}
