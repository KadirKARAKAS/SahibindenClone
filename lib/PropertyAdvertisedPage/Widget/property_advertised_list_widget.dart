import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sahibinden_clone/models/propertyAdvertised.dart';
import 'package:sahibinden_clone/utils.dart';

class PropertyAdvertisedListWidget extends StatelessWidget {
  const PropertyAdvertisedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AdvertisedInfo>>(
        future: fetchAdvertised(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No Categories Available'));
          } else {
            final advertised = snapshot.data!;
            print(advertised);
            return ListView.builder(
              padding: EdgeInsets.only(top: 20),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: AppImages.images.length,
              itemBuilder: (context, index) =>
                  listviewContainer(index, advertised[index]),
            );
          }
        });
  }

  Padding listviewContainer(int index, AdvertisedInfo advertisedInfo) {
    String imagePath = index < AppImages.images.length
        ? AppImages.images[index]
        : 'assets/images/images1.png';
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
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
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    advertisedInfo.name,
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
                advertisedInfo.price,
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

  Future<List<AdvertisedInfo>> fetchAdvertised() async {
    try {
      final String response =
          await rootBundle.loadString('assets/data/propertyAdvertised.json');
      print('JSON Yükleme Başarılı: $response');
      final data = json.decode(response);
      print('Decoded JSON: $data');
      return (data['categories'] as List)
          .map((item) => AdvertisedInfo.fromJson(item))
          .toList();
    } catch (e) {
      print("Error loading categories: $e");
      return [];
    }
  }
}
