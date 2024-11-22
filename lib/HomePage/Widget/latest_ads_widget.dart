import 'package:flutter/material.dart';

class LatestAdsWidget extends StatelessWidget {
  const LatestAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height / 2.75,
          color: Colors.white,
          child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.only(top: 10),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return containerWidgetListViewBuilder();
              }),
        ),
        Container(
          width: size.width,
          height: 35,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Tümünü Göster",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue.shade900,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.blue.shade900,
                  size: 30,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class containerWidgetListViewBuilder extends StatelessWidget {
  const containerWidgetListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 0.50,
            ),
          ),
        ),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 5),
                  child: SizedBox(
                    width: 120,
                    height: 80,
                    child: Image.asset(
                      "assets/araba2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    "A45 AMG HATASIZ HAFTA SONUNA KADAR GEÇERLİ FİYAT",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 10,
              bottom: 5,
              child: Text(
                "2.258.000 TL",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.blue.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
