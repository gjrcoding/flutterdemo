import 'package:flutter/material.dart';

void main() =>  runApp(TightlyConstraintWidget('hello world'));

/**
 * Loose constraints（松散约束）
 *
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
          color: Colors.yellow,
          constraints: BoxConstraints.loose(Size(0, 100)),
          child: Text(
            'helloworldeeeeeeeeeeeeeeeerrrrrrrrrrr',
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}