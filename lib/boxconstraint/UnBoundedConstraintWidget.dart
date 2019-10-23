import 'package:flutter/material.dart';

void main() => runApp(UnBoundedConstraintWidget('hello world'));

/**
 * UnBounded constraints（无界约束）
 * 其实 Unbounded Constraints 很像 Loose Constraints。当 Unbounded Constraints
 * 有 子Widget 时，若 子Widget 的大小小于 Unbounded Constraints 的最小值时，则 Widget 显示 Unbounded Constraints 的最小值，
 * 若 子Widget 的大小大于 Unbounded Constraints 的最小值时，则显示 子Widge t的大小；若没有 子Widget，就相当于 match_parent
 */
class UnBoundedConstraintWidget extends StatefulWidget {
  String content;

  UnBoundedConstraintWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TightlyState();
  }
}

class TightlyState extends State<UnBoundedConstraintWidget> {
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
          constraints: BoxConstraints(
              minWidth: 10,
              maxWidth: double.infinity,
              minHeight: 100,
              maxHeight: double.infinity),
          child: Text(
            'helloworld,helloworld,helloworld',
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}
