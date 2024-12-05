import 'package:flutter/material.dart';
import 'package:sahibinden_clone/GlobalWidgets/advartised_appbar_widget.dart';
import 'package:sahibinden_clone/PropertyAdvertisedPage/Widget/property_advertised_list_widget.dart';

class PropertyAdvertisedPage extends StatefulWidget {
  const PropertyAdvertisedPage({super.key});

  @override
  State<PropertyAdvertisedPage> createState() => _PropertyAdvertisedPageState();
}

class _PropertyAdvertisedPageState extends State<PropertyAdvertisedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AdvartisedAppbarWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PropertyAdvertisedListWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
