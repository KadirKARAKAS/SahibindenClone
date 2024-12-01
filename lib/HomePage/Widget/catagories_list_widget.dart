import 'package:flutter/material.dart';
import 'package:sahibinden_clone/HomePage/Page/home_page.dart';
import 'package:sahibinden_clone/PropertyCatagoriesPage/Page/property_first_page.dart';
import 'package:sahibinden_clone/models/category.dart';
import 'package:sahibinden_clone/services/category_service.dart';

class CatagoriesListWidget extends StatelessWidget {
  const CatagoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height / 1.5,
      color: Colors.white,
      child: FutureBuilder<List<Category>>(
        future: CategoryService().fetchCategories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Categories Available'));
          } else {
            final categories = snapshot.data!;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];

                  void navigateToPage(int index) {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PropertyFirstPage(),
                          ),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                        break;
                      default:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                        break;
                    }
                  }

                  return InkWell(
                    onTap: () {
                      navigateToPage(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Image.asset(category.icon, scale: 10),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  category.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                                ),
                                Text(
                                  category.description,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey.shade900,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.grey,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
