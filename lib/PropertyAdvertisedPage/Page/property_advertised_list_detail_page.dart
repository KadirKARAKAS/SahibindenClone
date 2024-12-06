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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 45,
                    color: Colors.blue.shade800,
                    child: Center(
                        child: Text(
                      "Ara",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 130,
                    height: 45,
                    color: Colors.blue.shade800,
                    child: Center(
                        child: Text(
                      "Mesaj Gönder",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        color: Colors.yellow),
                    child: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
