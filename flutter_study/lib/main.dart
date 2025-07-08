import 'package:flutter/material.dart';
import 'Demo/listview_demo.dart';
import 'Demo/drawer_demo.dart';
import 'Demo/bottom_navigationbar_demo.dart';
import 'Demo/basic_demo.dart';
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
            ListViewDemo(),
            BasicDemo(),
            Icon(Icons.person, size: 128, color: Colors.black),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

/*


*/