import 'package:flutter/material.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Widget'),
        ),
        body: Text('Hello Text Widget',
          style: TextStyle(
            color: Colors.red,
            fontSize: 22.0,
            backgroundColor: Colors.yellow,
            decorationColor: Colors.blue,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}