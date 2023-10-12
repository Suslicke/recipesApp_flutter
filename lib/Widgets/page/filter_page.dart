import 'package:flutter/material.dart';
import 'package:recipe/Widgets/page/main_drawer.dart';
import 'package:recipe/data.dart';

class FiltersPage extends StatefulWidget {
  static const String route = "/settings";
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Choose your taste in meals",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                    "Gluten Free dishes",
                    "When you choose this parameters, all the dishes gluten free must be filtered",
                    MockData.isGlutenFree, (value) {
                  setState(() {
                    MockData.isGlutenFree = value;
                  });
                }),
                Divider(height: 25),
                _buildSwitchListTile(
                    "Lactose Free dishes",
                    "When you choose this parameters, all the dishes lactose free must be filtered",
                    MockData.isLactoseFree, (value) {
                  setState(() {
                    MockData.isLactoseFree = value;
                  });
                }),
                Divider(height: 25),
                _buildSwitchListTile(
                    "is Vegetarian dishes",
                    "When you choose this parameters, all the dishes Vegetatian free must be filtered",
                    MockData.isVegetarian, (value) {
                  setState(() {
                    MockData.isVegetarian = value;
                  });
                }),
                Divider(height: 25),
                _buildSwitchListTile(
                    "is Vegan dishes",
                    "When you choose this parameters, all the dishes Vegan free must be filtered",
                    MockData.isVegan, (value) {
                  setState(
                    () {
                      MockData.isVegan = value;
                    },
                  );
                }),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildSwitchListTile(
    String title,
    String description,
    bool parameters,
    void Function(bool) tapHandler,
  ) {
    return SwitchListTile(
      value: parameters,
      onChanged: tapHandler,
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
