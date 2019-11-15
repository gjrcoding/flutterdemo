import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() => runApp(NetImageWidget());

class NetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(),
      home: Scaffold(
          appBar: MyAppWidget.appBarWidget(context, "Flutter UI基础Widget -- network 图片"),
          body: Image.network(
              'https://wx3.sinaimg.cn/mw690/60f10f01gy1g7r31p1nkij22c034w4qr.jpg')),
    );
  }
}
