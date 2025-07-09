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
      decoration: BoxDecoration(
        color: Colors.grey[100],
        image: DecorationImage(
          image: AssetImage("assets/images/back.jpeg"),
          // fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.repeatY,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
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
              // borderRadius: BorderRadius.all(Radius.circular(16.0)),
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
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 238, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}


/*


image: DecorationImage()
  image: AssetImage()
  alignment: Alignment.topCenter
  repeat: ImageRepeat.repeatY
  colorFilter: ColorFilter.mode(
    Colors.black.withOpacity(0.5),
    BlendMode.hardLight,
  )



 */