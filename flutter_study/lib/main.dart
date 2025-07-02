import 'package:flutter/material.dart';
import 'Demo/listview_demo.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
     ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
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
      appBar: AppBar(title: Text("lxy-code"), centerTitle: true, elevation: 10),
      body: ListViewDemo(),
      backgroundColor: Colors.grey[100],
    );
  }
}


// ListView 控件 builder
// Image的用法
// 临时绕过https证书校验