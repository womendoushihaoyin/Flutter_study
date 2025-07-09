import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
 
  final String title = "将进酒";
  final String author = "李白";

  final TextStyle _textStyle = TextStyle(
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        children: [
          Container(
            child: Icon(Icons.favorite, size: 32.0, color: Colors.white),
            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
          ),
        ],
      ),
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