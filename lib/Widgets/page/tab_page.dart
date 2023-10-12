import 'package:flutter/material.dart';
import 'package:recipe/Widgets/page/category_page.dart';
import 'package:recipe/Widgets/page/favorite_meals_page.dart';
import 'package:recipe/Widgets/page/main_drawer.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedPageIndex = 0;

  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoryPage(),
        'title': 'Categories',
      },
      {
        'page': FavoriteMealsPage(),
        'title': 'Favorite',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'] as String,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onSelected,
        backgroundColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.red[800],
      ),
    );
  }

  void _onSelected(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }
}
