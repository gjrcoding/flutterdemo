import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';
import 'package:flutter_app/ireader/CityWidget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HotMovieListWidget.dart';

class DouBanWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DoubanWidgetState();
  }
}

class _DoubanWidgetState extends State<DouBanWidget> {
  var _currentCity = '上海';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  void initData() async {
    final prefs = await SharedPreferences.getInstance(); //获取 prefs

    String city = prefs.getString("currCity");
    if (city != null && !city.isEmpty) {
      setState(() {
        _currentCity = city;
      });
    } else {
      setState(() {
        _currentCity = "上海";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;
    return MaterialApp(
        home: Scaffold(
            body: Container(
      margin: EdgeInsets.fromLTRB(0, paddingTop + 10, 0, 5),
      child: Column(
        children: <Widget>[getSearchWidget(), getTabBarWidget()],
      ),
    )));
  }

  Widget getTabBarWidget() {
    return Expanded(
      flex: 1,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                unselectedLabelColor: Colors.black12,
                labelColor: Colors.black87,
                indicatorColor: Colors.black87,
                tabs: <Widget>[
                  Tab(
                    text: '电影',
                  ),
                  Tab(
                    text: '电视',
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: <Widget>[
                    HotMovieListWidget(_currentCity),
                    Center(
                      child: Text('电视'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getSearchWidget() {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Builder(builder: (context) {
                return GestureDetector(
                  child: Text(_currentCity),
                  onTap: () {
                    _jumtToCityWidget();
                  },
                );
              }),
              Icon(Icons.arrow_drop_down),
              Expanded(child: searchInputWidget())
            ],
          ),
        ));
  }

  void _jumtToCityWidget() async {
    var selectCity = await Navigator.of(context)
        .pushNamed('/Citys', arguments: _currentCity);
    if (selectCity == null) {
      return;
    }
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('currCity', selectCity); //存取数据
    setState(() {
      _currentCity = selectCity;
    });
  }

  Widget searchInputWidget() {
    return TextField(
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
          hintText: '电影 / 电视剧',
          contentPadding: EdgeInsets.all(5),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          filled: true,
          fillColor: Colors.black12),
    );
  }
}
