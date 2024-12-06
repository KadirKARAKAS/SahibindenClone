import 'package:flutter/material.dart';
import 'package:sahibinden_clone/GlobalWidgets/advartised_appbar_detail_widget.dart';
import 'package:sahibinden_clone/PropertyAdvertisedPage/Widget/property_advertised_list_detail_widget.dart';
import 'package:sahibinden_clone/models/propertyAdvertised.dart';
import 'package:sahibinden_clone/utils.dart';

class PropertyAdvertisedListDetailPage extends StatefulWidget {
  final AdvertisedInfo advertisedInfo;
  final String imagePath;

  const PropertyAdvertisedListDetailPage(
      {super.key, required this.advertisedInfo, required this.imagePath});

  @override
  State<PropertyAdvertisedListDetailPage> createState() =>
      _PropertyAdvertisedListDetailPageState();
}

class _PropertyAdvertisedListDetailPageState
    extends State<PropertyAdvertisedListDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            AdvartisedAppbarDetailWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PropertyAdvertisedListDetailWidget(
                      advertisedInfo: widget.advertisedInfo,
                      imagePath: AppImages.images[indexx],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
