import 'package:flutter/material.dart';
import 'package:recipe/Widgets/elements/category_item.dart';
import 'package:recipe/data.dart';
import 'package:recipe/models/categories.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: MockData.getCategories
            .map((category) => CategoryItem(category: category))
            .toList(),
      ),
    );
  }
}
