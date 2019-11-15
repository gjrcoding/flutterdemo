import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() => runApp(GestureActionWidget());

class GestureActionWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'gesture',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'gesture'),
        body: GestureDetector(
          child: Text('手势识别'),
          onTap: (){
            print('点击');
          },
          onDoubleTap: (){
            print('双击');
          },
          onLongPress: (){
            print('长按');
          },
          onHorizontalDragStart: (DragStartDetails details){
            print('水平滑动');
          },
        ),
      ),
    );
  }
}