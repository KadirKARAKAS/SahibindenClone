import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sahibinden_clone/models/propertyAdvertised.dart';

class PropertyAdvertisedListDetailWidget extends StatelessWidget {
  final AdvertisedInfo advertisedInfo;
  final String imagePath;

  const PropertyAdvertisedListDetailWidget({
    super.key,
    required this.advertisedInfo,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
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
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(advertisedInfo.name),
          )),
        ),
        Container(
          width: size.width,
          height: size.height / 3,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Text("Price: ${advertisedInfo.price}"),
        Text("City: ${advertisedInfo.city}"),
      ],
    );
  }
}
