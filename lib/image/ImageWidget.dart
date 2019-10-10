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
        appBar: AppBar(title: Text("Flutter UI基础Widget -- 图片")),
        body: Image.asset('images/60f10f01gy1g7r31tzp8ej221634o1ky.jpg', fit: BoxFit.cover,)
      ),
    );
  }
}