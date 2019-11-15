import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() => runApp(IconImageWidget());

class IconImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, "Flutter UI基础Widget -- Icon"),
        body: Icon(
          Icons.android,
          size: 100.0,
          color: Colors.red,
        )
      ),
    );
  }
}