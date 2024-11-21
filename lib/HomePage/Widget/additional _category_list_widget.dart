import 'package:flutter/material.dart';

class AdditionalCategoryListWidget extends StatelessWidget {
  const AdditionalCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 8,
          color: Colors.white,
        ),
        Container(),
      ],
    );
  }
}
