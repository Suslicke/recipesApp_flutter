import 'package:flutter/material.dart';
import 'package:recipe/Widgets/page/meal_detail_page.dart';

import '../../models/meals.dart';

class ShortMeal extends StatelessWidget {
  final Meal meal;
  late final BuildContext context;

  ShortMeal({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return InkWell(
      onTap: switchToMeal,
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 1 / 3,
                    fit: BoxFit.cover,
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 250,
                //   decoration: BoxDecoration(
                //       borderRadius:
                //           BorderRadius.vertical(top: Radius.circular(20)),
                //       color: Theme.of(context).primaryColor),
                // ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      meal.title,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const VerticalDivider(
                        color: Colors.transparent,
                      ),
                      Text("${meal.duration} min")
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const VerticalDivider(
                        color: Colors.transparent,
                      ),
                      Text("${meal.complexity.name}")
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const VerticalDivider(
                        color: Colors.transparent,
                      ),
                      Text("${meal.affordability.name}"),
                      // Text("${meal.getAffordability}") On Russian
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void switchToMeal() {
    Navigator.of(context).pushNamed(MealDetailPage.route, arguments: meal);
  }
}
