import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

void main() => runApp(CachedNetImageWidget());

class CachedNetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(
            context, "Flutter UI基础Widget -- network 图片"),
        body: Center(
            child: CachedNetworkImage(
          placeholder: (context, url) {
            return CircularProgressIndicator();
          },
          imageUrl:
              'https://wx4.sinaimg.cn/mw690/6856aa6fgy3gbxbo0pcqxj20zk0zke81.jpg',
          errorWidget: (context, url, error) {
            return Icon(Icons.error);
          },
        )),
      ),
    );
  }
}
