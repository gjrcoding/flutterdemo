import 'package:flutter/material.dart';

class ContentViewPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;


  final ContentPagerController contentPagerController;

  const ContentViewPager({Key key, this.onPageChanged, this.contentPagerController}) : super(key: key);

  @override
  _ContentViewPagerState createState() => _ContentViewPagerState();
}

class _ContentViewPagerState extends State<ContentViewPager> {
  static List<Color> _listColors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green
  ];


  @override
  void initState() {
    if(widget.contentPagerController!=null){
      widget.contentPagerController._pageController = _pageController;
    }
  }

  PageController _pageController = PageController(
      //视窗比例
      viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appbar
        Expanded(
            child: PageView(
          controller: _pageController,
          children: <Widget>[
            _wrapPageItem(0),
            _wrapPageItem(1),
            _wrapPageItem(2),
            _wrapPageItem(3),
          ],
          onPageChanged: widget.onPageChanged,
        ))
      ],
    );
  }

  Widget _wrapPageItem(int index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(color: _listColors[index]),
      ),
    );
  }
}

//内容区域的控制器
class ContentPagerController {
  PageController _pageController;

  void jumpToPage(int index) {
    //dart 编程技巧，安全的调用
    _pageController?.jumpToPage(index);
  }
}
