import 'package:flutter/material.dart';

void main() =>  runApp(TightlyConstraintWidget('hello world'));

/**
 * Tightly constraints（严格约束）
 * 宽 高 是固定的
 */
class TightlyConstraintWidget extends StatefulWidget{
  String content;

  TightlyConstraintWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TightlyState();
  }
}

class TightlyState extends State<TightlyConstraintWidget>{
  void increment(){
    setState(() {
      widget.content+='d';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Paint paint = Paint();
    paint.color = Colors.red;

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('box contraints'),
        ),
        body: Container(
          color: Colors.green,
          constraints: BoxConstraints.tight(Size(100, 100)),
          child: Text(
            'helloworld',
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}