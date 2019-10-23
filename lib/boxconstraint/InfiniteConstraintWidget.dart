import 'package:flutter/material.dart';

void main() => runApp(InfiniteConstraintWidget('hello world'));

/**
 * Infinite constraints（无限约束）
 * Infinite Constraints 就相当于 match_parent
 */
class InfiniteConstraintWidget extends StatefulWidget {
  String content;

  InfiniteConstraintWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TightlyState();
  }
}

class TightlyState extends State<InfiniteConstraintWidget> {
  void increment() {
    setState(() {
      widget.content += 'd';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Paint paint = Paint();
    paint.color = Colors.red;

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primaryColor: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text('box contraints'),
        ),
        body: Container(
          color: Colors.green,
          constraints: BoxConstraints.expand(),
          child: Text(
            'helloworld,helloworld,helloworld',
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}
