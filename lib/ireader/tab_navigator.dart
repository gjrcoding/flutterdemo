import 'package:flutter/material.dart';

class TabNavigatorWidget extends StatefulWidget {
  @override
  _TabNavigatorWidgetState createState() => _TabNavigatorWidgetState();
}

class _TabNavigatorWidgetState extends State<TabNavigatorWidget> {
  final _defaulgColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold 页面结构组件的实现
      body: Container(
        //容器组件
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffedeef0), Color(0xffe6e7e9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Text(
            '你点击了第$_currentIndex个Tab',
            style: TextStyle(color: Colors.blue,fontSize: 36),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            _bottomItem('本周', Icons.folder, 0),
            _bottomItem('分享', Icons.share, 1),
            _bottomItem('免费', Icons.free_breakfast, 2),
            _bottomItem('我的', Icons.near_me, 3)
          ]),
    );
  }

  //封装底部Tab
  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaulgColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: _currentIndex != index ? _defaulgColor : _activeColor),
        ));
  }
}
