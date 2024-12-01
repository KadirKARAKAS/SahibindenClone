import 'package:flutter/material.dart';

class CatagoriesAppbarWidget extends StatelessWidget {
  const CatagoriesAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: 70,
          color: const Color.fromRGBO(24, 94, 145, 1),
        ),
        SizedBox(
          height: 70,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/more.png",
                  scale: 25,
                  color: Colors.white,
                ),
                const SizedBox(width: 25),
                const Text(
                  "Katagori Seçimi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset(
                      "assets/email.png",
                      scale: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "assets/user.png",
                      scale: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "assets/car.png",
                      scale: 18,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
