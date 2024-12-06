import 'package:flutter/material.dart';
import 'package:sahibinden_clone/models/propertyAdvertised.dart';

class PropertyAdvertisedListDetailWidget extends StatefulWidget {
  final AdvertisedInfo advertisedInfo;
  final String imagePath;

  const PropertyAdvertisedListDetailWidget({
    super.key,
    required this.advertisedInfo,
    required this.imagePath,
  });

  @override
  _PropertyAdvertisedListDetailWidgetState createState() =>
      _PropertyAdvertisedListDetailWidgetState();
}

class _PropertyAdvertisedListDetailWidgetState
    extends State<PropertyAdvertisedListDetailWidget> {
  int selectedButtonIndex = 0;

  final List<String> buttonTexts = [
    'İlan Bilgileri',
    'Açıklama',
    'Konumu',
  ];

  List<Widget> get displayWidgets {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          advertisedPriceRow("Fiyat", widget.advertisedInfo.price),
          Divider(),
          advertisedInfoRow("İlan Tarihi", "06.12.2024"),
          Divider(),
          advertisedInfoRow("İlan No", "1215397546"),
          Divider(),
          advertisedInfoRow("Emlak Tipi", "Satılık Daire"),
          Divider(),
          advertisedInfoRow("m²(Brüt)", "110"),
          Divider(),
          advertisedInfoRow("m²(Net)", "100"),
          Divider(),
          advertisedInfoRow("Oda Sayısı", "2+1"),
          Divider(),
          advertisedInfoRow("Bina Yaşı", "3"),
          Divider(),
          advertisedInfoRow("Bulunduğu Kat", "2.Kat"),
          Divider(),
          advertisedInfoRow("Kat Sayısı", "5"),
          Divider(),
          advertisedInfoRow("Isıtma", "Kombi (Doğalgaz)"),
          Divider(),
          advertisedInfoRow("Mutfak", "Kapalı"),
          Divider(),
          advertisedInfoRow("Balkon", "Var"),
          Divider(),
          advertisedInfoRow("Asansör", "Var"),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Açıklama:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(widget.advertisedInfo.description),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Konum:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(widget.advertisedInfo.city),
        ],
      ),
    ];
  }

  Row advertisedPriceRow(String title, String title2) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey.shade600),
        ),
        Spacer(),
        Text(
          title2,
          style: TextStyle(color: Colors.blue.shade900),
        ),
      ],
    );
  }

  Row advertisedInfoRow(String title, String title2) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey.shade600),
        ),
        Spacer(),
        Text(
          title2,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(widget.advertisedInfo.name),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: size.height / 3,
              child: Image.asset(widget.imagePath, fit: BoxFit.cover),
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "X YAPI GAYRİMENKULL",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Divider(height: 20),
                Column(
                  children: [
                    Text(
                      "Emlak > Konut > Satılık > Daire",
                      style:
                          TextStyle(color: Colors.blue.shade900, fontSize: 13),
                    ),
                    Text(
                      widget.advertisedInfo.city,
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) {
                        return ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedButtonIndex = index;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(120, 30),
                            backgroundColor: selectedButtonIndex == index
                                ? Colors.yellow.shade700
                                : Colors.grey.shade300,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text(
                            buttonTexts[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        );
                      }),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.yellow.shade700,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: displayWidgets[selectedButtonIndex],
                ),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 190,
          left: 15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
