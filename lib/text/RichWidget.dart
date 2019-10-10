import 'package:flutter/material.dart';

void main() => runApp(RichWidget());

class RichWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rich Widget'),
        ),
        body: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'hello ', style: TextStyle(color: Colors.blue)),
              TextSpan(text: 'rich widget', style: TextStyle(color: Colors.red))
            ]
          ),
        ),
      ),
    );
  }
}