import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package

class AdvartisedAppbarWidget extends StatefulWidget {
  const AdvartisedAppbarWidget({super.key});

  @override
  _AdvartisedAppbarWidgetState createState() => _AdvartisedAppbarWidgetState();
}

class _AdvartisedAppbarWidgetState extends State<AdvartisedAppbarWidget> {
  String _generateRandomNumber() {
    Random random = Random();
    int randomNumber = random.nextInt(10000) + 450000;

    final formatter = NumberFormat('#,###');
    return formatter.format(randomNumber);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String randomNumber = _generateRandomNumber();

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Arama Sonucu",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$randomNumber sonuç bulundu",
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_rate_outlined,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
