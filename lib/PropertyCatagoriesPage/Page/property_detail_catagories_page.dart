import 'package:flutter/material.dart';
import 'package:sahibinden_clone/GlobalWidgets/catagories_appbar_widget.dart';
import 'package:sahibinden_clone/PropertyAdvertisedPage/Page/property_advertised_page.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Widget/property_detail_catagories_widget.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Widget/property_detail_extra_widget.dart';
import 'package:sahibinden_clone/utils.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatagoriesAppbarWidget(),
            pageFirstTextWidget(),
            PropertyDetailCatagoriesWidget(),
            pageSecondTextWidget(),
            PropertyDetailExtraWidget(),
          ],
        ),
      ),
    );
  }

  Column pageFirstTextWidget() => Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PropertyAdvertisedPage(),
                          ));
                    },
                    child: Text(
                      "Tüm \"${pageTitle}\" İlanları",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(24, 94, 145, 1),
                      ),
                    ),
                  ))),
          const Divider(
            height: 5,
          )
        ],
      );

  Column pageSecondTextWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "İLGİLİ KATAGORİLER",
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
        ),
        Divider(height: 15)
      ],
    );
  }
}
