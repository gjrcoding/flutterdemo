import 'package:flutter/material.dart';

void main() => runApp(ImageWidget());

class ImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI基础Widget -- Icon")),
        body: Icon(
          Icons.android,
          size: 100.0,
          color: Colors.red,
        )
      ),
    );
  }
}