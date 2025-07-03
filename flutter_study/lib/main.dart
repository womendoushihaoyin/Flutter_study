import 'package:flutter/material.dart';
import 'Demo/listview_demo.dart';
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
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              debugPrint("menu");
            },
          ),
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
        )
      ),
    );
  }
}

// TabBar unselectedLabelColor: Colors.black38,
// indicatorSize: TabBarIndicatorSize.tab,
// indicatorColor: Colors.black54,
// indicatorWeight: 1,