import 'package:flutter/material.dart';

void main() =>  runApp(TightlyForConstraintWidget('hello world'));

/**
 * Loose constraints（松散约束）
 * 最大值是是 Infinite(无限值)
 */
class TightlyForConstraintWidget extends StatefulWidget{
  String content;

  TightlyForConstraintWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TightlyState();
  }
}

class TightlyState extends State<TightlyForConstraintWidget>{
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
          constraints: BoxConstraints.tightFor(),//最大值是是 Infinite(无限值)
          child: Text(
            'helloworld',
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}