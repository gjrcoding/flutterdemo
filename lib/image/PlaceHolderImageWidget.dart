import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(PlaceHolderImageWidget());

class PlaceHolderImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(),
      home: Scaffold(
          appBar: MyAppWidget.appBarWidget(context, "Flutter UI基础Widget -- network 图片"),
          body:
//          FadeInImage.memoryNetwork(
//            placeholder: kTransparentImage,
//            image:  'https://wx4.sinaimg.cn/mw690/006STR5Gly1gc0qcsp8lyj33gg3gg7ws.jpg',
//             )),
        FadeInImage.assetNetwork(
          placeholder: 'images/60f10f01gy1g7r31tzp8ej221634o1ky.jpg',
          image:  'https://wx1.sinaimg.cn/mw690/9fef4eebgy1gc0miptibyj20u0140dr2.jpg',
        ))
    );
  }
}
