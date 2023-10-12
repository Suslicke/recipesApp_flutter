import 'package:flutter/material.dart';
import 'package:recipe/Widgets/elements/short_meal.dart';
import 'package:recipe/data.dart';

class FavoriteMealsPage extends StatelessWidget {
  const FavoriteMealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MockData.getFavoriteMeals.isEmpty) {
      return Center(
        child: Text("You haven't favorite meals"),
      );
    } else {
      return ListView.builder(
        itemCount: MockData.getFavoriteMeals.length,
        itemBuilder: (context, index) => ShortMeal(
          meal: MockData.getFavoriteMeals[index],
        ),
      );
    }
  }
}
