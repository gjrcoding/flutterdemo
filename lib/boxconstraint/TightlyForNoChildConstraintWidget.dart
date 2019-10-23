import 'package:flutter/material.dart';

void main() =>  runApp(TightlyForNoChildConstraintWidget('hello world'));

/**
 * Tightly constraints（严格约束）
 * 全屏 没有child
 *
 * 当 Widget 是 Loose Constraints 时，无论最大值是确定值还是无限制，
 * 如果有 子Widget，那么 Widget 的大小就是 子Widget 的大小，相当于 wrap_content，
 * 如果没有 子Widget，那么 Widget 就是最大值，如果这个最大值是 Infinite,就相当于 match_parent
 */
class TightlyForNoChildConstraintWidget extends StatefulWidget{
  String content;

  TightlyForNoChildConstraintWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TightlyState();
  }
}

class TightlyState extends State<TightlyForNoChildConstraintWidget>{
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
          constraints: BoxConstraints.tightFor(),
        ),
      ),
    );
  }
}