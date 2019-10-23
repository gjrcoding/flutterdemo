import 'package:flutter/material.dart';

void main() =>  runApp(BoundedConstraintWidget('hello world'));

/**
 * Bounded constraints（有界约束）
 * 当 Widget 是 Bounded Constraints 时,如果有 子Widget，子Widget 的大小小于有界约束的最小值，
 * 则显示的是有界约束的最小值，而当 子Widget 的大小大于有界约束的最小值，小于有界约束的最大值，
 * 则显示的是 子Widget 的大小，否则显示的是有界约束的最大值；如果没有 子Widget 就显示有界约束的最大值
 */
class BoundedConstraintWidget extends StatefulWidget{
  String content;

  BoundedConstraintWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TightlyState();
  }
}

class TightlyState extends State<BoundedConstraintWidget>{
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
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: 150,
            minHeight: 0,
            maxHeight: 300
          ),
         /* child: Text(
            'helloworld,helloworld,helloworld',
            style: TextStyle(background: paint),
          ),*/
        ),
      ),
    );
  }
}