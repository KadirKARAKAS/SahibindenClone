import 'package:flutter/material.dart';

class AdvartisedAppbarDetailWidget extends StatefulWidget {
  const AdvartisedAppbarDetailWidget({super.key});

  @override
  _AdvartisedAppbarWidgetState createState() => _AdvartisedAppbarWidgetState();
}

class _AdvartisedAppbarWidgetState extends State<AdvartisedAppbarDetailWidget> {
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
                  "İlan Detayı",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
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
          ),
        ),
      ],
    );
  }
}
