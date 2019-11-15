import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';
/**
 * 弹性布局：flex，类似css的flexbox
 */

void main() => runApp(FlexFexWidget());

class FlexFexWidget extends StatelessWidget {
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
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
