import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedDemoWidget());
}

class AnimatedDemoWidget extends StatefulWidget {
  @override
  _AnimatedDemoWidgetState createState() => _AnimatedDemoWidgetState();
}

class _AnimatedDemoWidgetState extends State<AnimatedDemoWidget> {
  @override
  Widget build(BuildContext context) {
    final appTitle = '淡入淡出动画';
    return MaterialApp(
      title: appTitle,
      home: MyAnimatedPage(title: appTitle),
    );
  }
}

class MyAnimatedPage extends StatefulWidget {
  final String title;

  const MyAnimatedPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAnimatedPageState();
  }
}

class _MyAnimatedPageState extends State<MyAnimatedPage> {
  //控制动画显示状态变量
  var _visible = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('动画'),
      ),
      body: Center(
        //添加Opacity动画
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: new Duration(milliseconds: 1000),
          child: Container(
            width: 300.0,
            height: 300.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //控制动画显示状态
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: ' 显示隐藏 ',
        child: Icon(Icons.flip),
      ),
    );
  }
}
