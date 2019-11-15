import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';
/**
 * 弹性布局：flex，类似css的flexbox
 */

void main() =>  runApp(FlexWidget());

class FlexWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flex',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'flex'),
        body: Container(
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //为了避免 子Widget在Row、Column、Flex中超界，就可以使用Flexible与Expanded。
              //Flexible与Expanded可以让Row、Column、Flex的子Widget具有弹性能力

              //当还有剩余空间时，expanded会占满剩余的所有空间，而flexible只会占用自身大小的空间
              Flexible(
                  child: Container(
                    color: Colors.red,
                    child: Text('hello flutter!hello flutter!'
                    ),
                  )
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Text('hello android,hello android,'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
