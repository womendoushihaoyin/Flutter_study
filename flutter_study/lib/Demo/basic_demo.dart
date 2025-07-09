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
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0),
              // ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                )
              ]
            ),
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}


/*

boxShadow: [
  BoxShadow(
    offset: Offset(),
    blurRadius:
    spreadRadius
    color
  )
]

 */