import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Page/property_detail_catagories_page.dart';
import 'package:sahibinden_clone/utils.dart';

class PropertyExtraCatagoriesWidget extends StatelessWidget {
  PropertyExtraCatagoriesWidget({Key? key}) : super(key: key);

  final List<String> titles = [
    "Boya & Badana",
    "Evden Eve Nakliyat",
    "Islak Zemin & Fayans",
    "Mutfak, Banyo Yenileme",
    "Alçı & Kartonpiyer",
    "Beyaz Eşya",
    "Yapı Malzemeleri",
    "Küçük Ev Aletleri",
    "Mobilya",
    "Güvenlik Sistemleri"
  ];

  String generateRandomNumber() {
    final random = Random();
    int number = random.nextInt(1750000) + 500;

    final formatter = NumberFormat('#,###');
    return formatter.format(number);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 1.63,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          void navigateToPage(int index) {
            switch (index) {
              case 0:
                pageTitle = titles[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailCatagoriesPage(),
                  ),
                );
                break;
              case 1:
                pageTitle = titles[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailCatagoriesPage(),
                  ),
                );
                break;
              case 3:
                pageTitle = titles[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailCatagoriesPage(),
                  ),
                );
                break;
              case 4:
                pageTitle = titles[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailCatagoriesPage(),
                  ),
                );
                break;
              case 5:
                pageTitle = titles[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailCatagoriesPage(),
                  ),
                );
                break;
              default:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailCatagoriesPage(),
                  ),
                );
                break;
            }
          }

          return PropertyListItem(
            title: titles[index],
            randomNumber: generateRandomNumber(),
            onTap: () {
              navigateToPage(index);
            },
          );
        },
      ),
    );
  }
}

class PropertyListItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String randomNumber;
  const PropertyListItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.randomNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "(${randomNumber})",
                style: TextStyle(fontSize: 13.7, color: Colors.grey.shade500),
              ),
              const SizedBox(width: 8),
              const Icon(
                size: 32,
                Icons.navigate_next_rounded,
                color: Colors.grey,
              ),
            ],
          ),
          onTap: onTap,
        ),
        const Divider(
          height: 5,
        ),
      ],
    );
  }
}
