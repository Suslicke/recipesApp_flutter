import 'package:flutter/material.dart';

import 'models/categories.dart';
import 'models/meals.dart';

class MockData {
  static final List<Meal> _favoriteMeals = [];
  static final List<Meal> _meals = [
    Meal(
      id: "m1",
      title: "Hamburger",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Hamburger_%28black_bg%29.jpg/640px-Hamburger_%28black_bg%29.jpg",
      ingredients: ["Bread", "Salad", "Meat", "Tomato"],
      steps: [
        "Take bread and cut on 2 half",
        "Take meat and cook to ready",
        "Take meat, cut salad, cut tomato and ready bread",
        "You put on table bread then put meat, then salad then tomato, then 2nd half of bread",
      ],
      duration: 120,
      complexity: Complexity.Normal,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegetarian: false,
      isVegan: false,
      categories: ['c3', 'c2'],
    ),
    Meal(
      id: "m2",
      title: "Hamburger with Cow",
      imageUrl:
          "https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/1:1/w_2560%2Cc_limit/the-ultimate-hamburger.jpg",
      ingredients: ["Bread", "Salad", "Meat", "Tomato"],
      steps: [
        "Take bread and cut on 2 half",
        "Take meat and cook to ready",
        "Take meat, cut salad, cut tomato and ready bread",
        "You put on table bread then put meat, then salad then tomato, then 2nd half of bread",
      ],
      duration: 320,
      complexity: Complexity.Normal,
      affordability: Affordability.Luxurious,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegetarian: false,
      isVegan: false,
      categories: ['c3', 'c2'],
    ),
  ];

  static bool isGlutenFree = false;
  static bool isLactoseFree = false;
  static bool isVegetarian = false;
  static bool isVegan = false;

  static List<Category> get getCategories => [
        Category(
          id: "c1",
          title: "Italian",
          color: Colors.purple,
        ),
        Category(
          id: "c2",
          title: "Quick & Easy",
          color: Colors.red,
        ),
        Category(
          id: "c3",
          title: "Hamburger",
          color: Colors.orange,
        ),
        Category(
          id: "c4",
          title: "German",
          color: Colors.yellow,
        ),
        Category(
          id: "c5",
          title: "Light & Lovely",
          color: Colors.blue.shade700,
        ),
        Category(
          id: "c6",
          title: "Exotic",
          color: Colors.green.shade700,
        ),
        Category(
          id: "c7",
          title: "Breakfast",
          color: Colors.blue.shade300,
        ),
        Category(
          id: "c8",
          title: "Asian",
          color: Colors.green.shade400,
        ),
      ];
  static List<Meal> get getMeals => _meals
      .where((meal) =>
          (!isGlutenFree || meal.isGlutenFree == isGlutenFree) &&
          (!isLactoseFree || meal.isLactoseFree == isLactoseFree) &&
          (!isVegan || meal.isVegan == isVegan) &&
          (!isVegetarian || meal.isVegetarian == isVegetarian))
      .toList();

  static List<Meal> get getFavoriteMeals => _favoriteMeals;

  static void addToFavoriteMeals(Meal meal) {
    _favoriteMeals.add(meal);
  }

  static void removeToFavoriteMeals(Meal meal) {
    _favoriteMeals.remove(meal);
  }
}
