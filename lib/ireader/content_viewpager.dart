import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemos/ireader/custom_appbar.dart';
import 'demo_pager.dart';
import 'doubanwidget.dart';

class ContentViewPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;

  final ContentPagerController contentPagerController;

  const ContentViewPager(
      {Key key, this.onPageChanged, this.contentPagerController})
      : super(key: key);

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
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }

  PageController _pageController = PageController(
      //视窗比例
      viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: PageView(
          controller: _pageController,
          children: <Widget>[
            DemoListWidget(),
            DouBanWidget(),
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

  //沉浸式状态栏
  _statusBar(){
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),//虚拟键背景色
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,//状态栏背景色
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
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
