import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() {
  runApp(MediaQueryWidget());
}

GlobalKey _globalKey = GlobalKey();

class MediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mediaquery',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'media query'),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'hello flutter',
          key: _globalKey,
        ),
        RaisedButton(
          child: Text('getSize'),
          onPressed: () {
            double devicePR = MediaQuery.of(context).devicePixelRatio;
            //获取屏幕的宽高
            print('Screen width ' +
                (MediaQuery.of(context).size.width * devicePR).toString() +
                ' Screen height ' +
                (MediaQuery.of(context).size.height * devicePR).toString() +
                ' devicePixelRatio ' +
                MediaQuery.of(context).devicePixelRatio.toString());

            //获取子widget的宽高
            print('view width ' +
                _globalKey.currentContext.size.width.toString() +
                ' view height ' +
                _globalKey.currentContext.size.height.toString());
          },
        )
      ],
    );
  }
}

class DeviceUtil {
  void getMediaQueryParameter(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    /**
     * 设备像素数 = 逻辑像素数 * devicePixelRatio
     */
    mediaQueryData.size.width; //屏幕的宽度（逻辑像素）
    mediaQueryData.size.height; //屏幕的高度（逻辑像素）
    mediaQueryData.devicePixelRatio; //像素比：每个逻辑像素代表的设备像素数
    mediaQueryData.textScaleFactor; //每个逻辑像素代表的字体像素数
    mediaQueryData.platformBrightness; //平台的亮度模式,有两种模式:light和dark 默认为light
    mediaQueryData.padding; //表示系统状态栏或者刘海屏的padding
    mediaQueryData.viewInsets; //表示设备键盘的padding
    mediaQueryData.alwaysUse24HourFormat; //格式化时间时是否使用24小时格式
    mediaQueryData
        .accessibleNavigation; //是否使用TalkBack或 VoiceOver等辅助功能服务与应用程序进行交互
    mediaQueryData.invertColors; //设备是否反转平台的颜色。现在只能在 iOS 上使用
    mediaQueryData.disableAnimations; //平台是否要求禁用动画
    mediaQueryData.boldText; //平台是否请求使用粗体来绘制文本。

    /*
     //获取屏幕的宽高
        print("Screen width:" +
        MediaQuery.of(context).size.width.toString() +
        " Screen height:" +
        MediaQuery.of(context).size.height.toString());
        //获取子Widget 的宽高
        print("Ttext width:" +
        _globalKey.currentContext.size.width.toString() +
        " Screen height:" +
        _globalKey.currentContext.size.height.toString());
     */
  }
}
