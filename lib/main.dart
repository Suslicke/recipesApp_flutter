import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe/Widgets/page/category_meals_page.dart';
import 'package:recipe/Widgets/page/category_page.dart';
import 'package:recipe/Widgets/page/filter_page.dart';
import 'package:recipe/Widgets/page/meal_detail_page.dart';
import 'package:recipe/Widgets/page/tab_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.orange, accentColor: Colors.red),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => TabPage(),
        CategoryMealsPage.route: (context) => CategoryMealsPage(),
        FiltersPage.route: (context) => FiltersPage(),
        MealDetailPage.route: (context) => MealDetailPage(),
      },
    );
  }
}
