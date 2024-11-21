import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: [
      Container(
        width: size.width,
        height: 90,
        color: Colors.white,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: size.width / 1.1,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Kelime veya ilan No. ile ara',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.qr_code_scanner,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
