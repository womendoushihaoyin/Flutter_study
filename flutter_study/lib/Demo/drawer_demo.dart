import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "liuxiaoye",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("xyliu_leo@163.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/mine.webp"),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: AssetImage("assets/images/back.jpeg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400]!.withAlpha(220),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),

          ListTile(
            title: Text("Message", textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),

          ListTile(
            title: Text("Favorite", textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),

          ListTile(
            title: Text("Settings", textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
