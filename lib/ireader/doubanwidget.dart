import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

import 'HotMovieListWidget.dart';

void main() {
  runApp(DouBanWidget());
}

class DouBanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'douban',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'douban'),
        body: Column(
          children: <Widget>[getSearchWidget(), getTabBarWidget()],
        ),
      ),
    );
  }

  Widget getTabBarWidget() {
    return Expanded(
      flex: 1,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(
                height:50
              ),
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
                    HotMovieListWidget(),
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
              Text('上海'),
              Icon(Icons.arrow_drop_down),
              Expanded(child: searchInputWidget())
            ],
          ),
        ));
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
