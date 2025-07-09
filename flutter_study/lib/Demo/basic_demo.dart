import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
 
  final String title = "将进酒";
  final String author = "李白";

  final TextStyle _textStyle = TextStyle(
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Liuxiaoye",
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w200,
        ),
        children: [
          TextSpan(
            text: ".net",
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          )
        ]
      )
    );
  }
}


/*

  RichText(
    text: TextSpan(
      text: "xxxx",
      style:
      children: [
        TextSpan(),
        TextSpan(),
      ]
    ),
  ),

 */