import 'package:flutter/material.dart';
import 'Demo/listview_demo.dart';
import 'Demo/drawer_demo.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hello(),
      debugShowCheckedModeBanner: false,
      title: "xiaoye",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("lxy-code"),
          centerTitle: true,
          elevation: 10,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("search"),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.black54,
            indicatorWeight: 1,
            tabs: <Widget>[
              Icon(Icons.favorite),
              Icon(Icons.history),
              Icon(Icons.person),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.favorite, size: 128, color: Colors.black12),
            Icon(Icons.history, size: 128, color: Colors.black),
            Icon(Icons.person, size: 128, color: Colors.black),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "My",
            ),
          ],
        ),
      ),
    );
  }
}

/*
Scaffold 中的bottom: BottomNavigationBar

BottomNavigationBar(
  type: BottomNavigationBarType.fixed, // 固定底部导航栏，否则超过三个的时候就不会再显示了
  fixedColor: Colors.black, // 选中时的颜色
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.explore),
      label: "Explore",
    ),
  ],
),

items: [
  BottomNavigationBarItem
]

*/