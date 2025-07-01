import 'package:flutter/material.dart';



main() => runApp(App());


// 40号字，黄色，加粗

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        "Hello",
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 40,
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}