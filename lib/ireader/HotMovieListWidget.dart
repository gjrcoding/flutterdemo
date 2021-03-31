import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/http/HtoMovieData.dart';
import 'package:flutter_app/ireader/DoubanHotMovieWidget.dart';
import 'package:flutter_app/ireader/HotMovieItem.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HotMovieListWidget extends StatefulWidget {
  var currCity;

  HotMovieListWidget(this.currCity);

  @override
  _HotMovieListWidgetState createState() => _HotMovieListWidgetState();
}

class _HotMovieListWidgetState extends State<HotMovieListWidget>
    with AutomaticKeepAliveClientMixin {
  List<HotMovieItem> hotMovieList = List();

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getRemoteData();
  }

  @override
  void initState() {
    super.initState();
    /*var data = HotMovieData('反贪风暴4', 6.3, '林德禄', '古天乐/郑嘉颖/林峯', 29013,
        'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2551353482.webp');

    hotMovieList.add(data);
    hotMovieList.add(data);
    hotMovieList.add(data);
    hotMovieList.add(data);
    hotMovieList.add(data);
    hotMovieList.add(data);*/
    getRemoteData();
  }

  /**
   * await作用->等待http.get()的数据返回后再执行下一步
   */
  Future<void> getRemoteData() async {
    List<HotMovieItem> serverDataList = new List();
    var response = await http.get(
        'https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=${widget.currCity}&start=0&count=10');
    //成功获取数据
    if (response.statusCode == 200) {
      print(response.body);

      Map<String, dynamic> jsonResponse = json.decode(response.body);
      for (dynamic data in jsonResponse['subjects']) {
        HotMovieItem hotMovieData = HotMovieItem.fromJson(data);
        serverDataList.add(hotMovieData);
      }

      setState(() {
        hotMovieList = serverDataList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    if (hotMovieList == null || hotMovieList.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return DouBanHotMovieWidget(hotMovieList[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1,
                color: Colors.black12,
              );
            },
            itemCount: hotMovieList.length));
  }

  @override
  bool get wantKeepAlive => true; //返回true，表示不会被回收
}
