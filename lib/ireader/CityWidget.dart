import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

import 'HotMovieListWidget.dart';

class CityWidget extends StatefulWidget {
  @override
  _CityWidgetState createState() => _CityWidgetState();
}

class _CityWidgetState extends State<CityWidget> {
  var curCity;
  var hotCitys;

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
                    text: '国内',
                  ),
                  Tab(
                    text: '国外',
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: <Widget>[
                    getInCountry(hotCitys),
                    Center(
                      child: Text('国外'),
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

  Widget getInCountry(var hotCitys) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        getInCountrySearch(),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text(
            'GPS定位城市',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, left: 20),
          child: MaterialButton(
            color: Colors.white,
            elevation: 0,
            onPressed: () {},
            child: Container(
              width: 50,
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on, size: 14, color: Colors.black),
                  Text(curCity)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text(
            '热门城市',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2.6,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 30),
                itemCount: hotCitys.length,
                itemBuilder: (context, index) {
                  return MaterialButton(
                    child: Text(hotCitys[index]),
                    color: Colors.white,
                    elevation: 0,
                    onPressed: () {
                      Navigator.pop(context, hotCitys[index]);
                    },
                  );
                }),
          ),
        )
      ],
    );
  }

  Widget getInCountrySearch() {
    return Container(
      height: 50,
      child: TextField(
        cursorColor: Colors.green,
        decoration: InputDecoration(
            hintText: '输入城市名查询',
            hintStyle: TextStyle(fontSize: 14),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    curCity = ModalRoute.of(context).settings.arguments;
    hotCitys = [
      '北京',
      '上海',
      '广州',
      '深圳',
      '成都',
      '武汉',
      '杭州',
      '重庆',
      '郑州',
      '南京',
      '西安',
      '苏州',
      '长沙',
      '天津',
      '福州'
    ];
    return Scaffold(
      appBar: MyAppWidget.appBarWidget(context, '城市选择'),
      body: Column(
        children: <Widget>[getTabBarWidget()],
      ),
    );
  }
}
