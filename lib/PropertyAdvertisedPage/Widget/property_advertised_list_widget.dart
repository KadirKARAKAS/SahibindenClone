import 'package:flutter/material.dart';
import 'package:sahibinden_clone/utils.dart';

class PropertyAdvertisedListWidget extends StatelessWidget {
  const PropertyAdvertisedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: AppImages.images.length,
      itemBuilder: (context, index) => listviewContainer(index),
    );
  }

  Padding listviewContainer(int index) {
    // Get the image from the AppImages list
    String imagePath = index < AppImages.images.length
        ? AppImages.images[index]
        : 'assets/images/images1.png'; // Fallback image if index out of bounds

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
                // Image section
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 5),
                  child: SizedBox(
                    width: 120,
                    height: 80,
                    child: Image.asset(
                      imagePath, // Dynamically load the image from the list
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Title section
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
            // Price section
            Positioned(
              right: 10,
              bottom: 5,
              child: Text(
                "2.258.000 TL", // Example price text
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
