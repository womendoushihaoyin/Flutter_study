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
    return Scaffold(
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
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => debugPrint("settings"),
          ),
        ],
      ),
      body: Center(child: Text("Hello")),
    );
  }
}


// IconButton 用法
// leading
// actions