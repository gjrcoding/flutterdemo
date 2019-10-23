import 'package:flutter/material.dart';

void main() =>  runApp(MyApp('hello world'));

/**
 * Tightly constraints（严格约束）
 * Loose constraints（松散约束）
 * Bounded constraints （有界约束）
 * Unbounded constraints（无界约束）
 * Infinite constraints（无限约束）
 */
class MyApp extends StatefulWidget{
  String content;

  MyApp(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
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
          child: Text(
            'helloworld',
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}