import 'package:flutter/material.dart';
import 'listview_demo.dart';

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