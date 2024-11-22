import 'package:flutter/material.dart';

class HomepageShowcaseWidget extends StatelessWidget {
  const HomepageShowcaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height / 2.5,
          color: Colors.white,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                      offset: const Offset(1, 2),
                    ),
                  ],
                ),
                child: Center(
                    child: Image.asset(
                  "assets/arabaresmi.png",
                )),
              );
            },
          ),
        ),
        Container(
          width: size.width,
          height: 30,
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
                      decoration: TextDecoration.underline),
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
