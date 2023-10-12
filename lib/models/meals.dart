import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

enum Complexity {
  Simple,
  Normal,
  Hard,
  Unreal,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;

  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan;

  final List<String> categories;

  Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegetarian,
    required this.isVegan,
    required this.categories,
  });

  String get getAffordability {
    switch (affordability) {
      case Affordability.Affordable:
        return "Не дорого";
      case Affordability.Pricey:
        return "Средне";
      case Affordability.Luxurious:
        return "Дорого";
    }
  }
}
