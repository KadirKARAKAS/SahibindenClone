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
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          const AdvartisedAppbarWidget(),
          Container(
            height: 55,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
              color: Colors.white,
            ),
            child: sortRowWidget(),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: PropertyAdvertisedListWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Row sortRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Filtrele",
          style: TextStyle(fontSize: 12),
        ),
        vertical_line(),
        Text(
          "Sırala",
          style: TextStyle(fontSize: 12),
        ),
        vertical_line(),
        Text(
          "Görünüm",
          style: TextStyle(fontSize: 12),
        ),
        vertical_line(),
        Text(
          "Aramayı Kaydet",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Container vertical_line() {
    return Container(
      width: 0.8,
      height: 25,
      color: Colors.black,
    );
  }
}
