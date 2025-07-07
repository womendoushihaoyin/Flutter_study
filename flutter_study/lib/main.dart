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
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("liuxiaoye", style: TextStyle(fontWeight: FontWeight.bold)),
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
                      BlendMode.hardLight
                    ),
                  ),
                ),
              ),

              ListTile(
                title: Text("Message", textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),

              ListTile(
                title: Text("Favorite", textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),

              ListTile(
                title: Text("Settings", textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),

            ]
          ),
        )
      ),
    );
  }
}

// decoration: BoxDecoration(

/* 
image: DecorationImage(
  image: xxx
  fit: BoxFix.cover,
  colorFilter: ColorFilter.mode(
    Colors.yellow[400]!.withAlpha(220),
    BlendMode.hardLight
  ),
)



*/