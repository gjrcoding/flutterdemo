import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

void main() {
  runApp(MaterialApp(
    title: '页面切换动画',
    home: FirstHeroPage(),
  ));
}

class FirstHeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppWidget.appBarWidget(context, '页面切换动画一'),
      body: GestureDetector(
        child: Hero(
          tag: '第一张图片',
          child: Image.network(
            'https://wx1.sinaimg.cn/mw690/006fXzpQly1g9brvgma2rj30u0190gso.jpg',
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return SecondPage();
          }));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: MyAppWidget.appBarWidget(context, '页面切换动画二'),
      body: GestureDetector(
        child: Hero(
          tag: '第二张图片',
          child: Image.network(
              'https://wx4.sinaimg.cn/mw690/0065GNjHly1g99e0wku87j322o3407wi.jpg',
              fit: BoxFit.cover),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
