import 'package:flutter/material.dart';


// 箭头函数
main() => runApp(App());


// 封装组件
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        "Hello",
        textDirection: TextDirection.rtl,
      ),
    );
  }
}