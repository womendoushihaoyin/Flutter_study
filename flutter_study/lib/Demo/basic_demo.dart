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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent,
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   )
              // )
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3.0,
                style: BorderStyle.solid,
              )
            ),
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}


/*

BoxDicoration(
  border: Border(
    top: BorderSide(
      color,
      width,
      style
    ),
    bottom:
    left:
    right:
  ),

  border: Border.all()
),

 */