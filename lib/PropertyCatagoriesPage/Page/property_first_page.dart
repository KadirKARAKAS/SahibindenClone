import 'package:flutter/material.dart';
import 'package:sahibinden_clone/GlobalWidgets/catagories_appbar_widget.dart';
import 'package:sahibinden_clone/PropertyAdvertisedPage/Page/property_advertised_page.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Widget/property_catagories_widget.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Widget/property_extra_catagories_widget.dart';

class PropertyFirstPage extends StatefulWidget {
  const PropertyFirstPage({super.key});

  @override
  State<PropertyFirstPage> createState() => _PropertyFirstPageState();
}

class _PropertyFirstPageState extends State<PropertyFirstPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatagoriesAppbarWidget(),
            greyContainerWidget(size),
            pageFirstTextWidget(),
            PropertyCatagoriesWidget(),
            pageSecondTextWidget(),
            PropertyExtraCatagoriesWidget(),
          ],
        ),
      ),
    );
  }

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

  Container greyContainerWidget(Size size) {
    return Container(
      width: size.width,
      height: 15,
      color: Colors.grey.shade300,
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
                      "Tüm Emlak İlanları",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(24, 94, 145, 1),
                      ),
                    ),
                  ))),
          Divider(
            height: 5,
          )
        ],
      );
}
