import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

void main() => runApp(ColumnWidget());

/**
 *如果 Row 里面嵌套 Row，或者 Column 里面再嵌套 Column，那么只有最外面的 Row 或 Column 会占用尽可能大的空间，里面 Row 或 Column 所占用的空间为实际大小
 */
class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, '线性布局'),
        body: Column(
          children: <Widget>[
            Text('hello flutter'),
            Image.asset(
              "images/60f10f01gy1g7r31tzp8ej221634o1ky.jpg",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
