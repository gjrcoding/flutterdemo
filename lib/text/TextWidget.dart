import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
      title: 'Text Widget',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'Text Widget'),
        body: Text(wordPair.asPascalCase,
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