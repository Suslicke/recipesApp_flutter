import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  Widget buildListTile(
      String title, IconData icon, void Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          )),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              alignment: Alignment.center,
              child: Text(
                "Cook together",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            Divider(height: 20, color: Colors.transparent),
            buildListTile("Dishes", Icons.restaurant, () {
              Navigator.pushReplacementNamed(context, '/');
            }),
            buildListTile("Settings", Icons.settings, () {
              Navigator.pushReplacementNamed(context, '/settings');
            }),
          ],
        ),
      ),
    );
  }
}
