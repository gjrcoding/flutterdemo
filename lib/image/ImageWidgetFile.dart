import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(ImageWidgetFile());

class ImageWidgetFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, "Flutter UI基础Widget -- 图片"),
//        body: Image.asset('images/60f10f01gy1g7r31tzp8ej221634o1ky.jpg', fit: BoxFit.cover,)
//      body: Image.file(File('/storage/emulated/0/tecent/MicroMsg/weiXin/mmexport1582012894450.jpg')),
        body: FutureBuilder(
          future: _getLocalFile('60f10f01gy1g7r31tzp8ej221634o1ky.jpg'),
          builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
            return snapshot.data != null
                ? Image.file(snapshot.data)
                : Container();
          },
        ),
      ),
    );
  }

  //相对路径的获取
  Future<File> _getLocalFile(String fileName) async {
    String dir = (await getExternalStorageDirectory()).path;
    File file = File('$dir/$fileName');
    return file;
  }
}
