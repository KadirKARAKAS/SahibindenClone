import 'package:flutter/material.dart';

class AdditionalCategoryListWidget extends StatelessWidget {
  const AdditionalCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: [
      Container(
          width: size.width,
          height: size.height / 8,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height / 16,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/unlem.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Acil Acil",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height / 16,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/clockk.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Son 48 Saat",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
    ]);
  }
}
