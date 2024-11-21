import 'package:flutter/material.dart';

class CatagoriesListWidget extends StatelessWidget {
  const CatagoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 1.5,
          color: Colors.white,
        ),
        Container(),
      ],
    );
  }
}
