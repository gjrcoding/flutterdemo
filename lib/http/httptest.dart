import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'HtoMovieData.dart';



void _getData() async{
  /*List<HotMovieData> serverDataList = List();
  var url = 'https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%E6%B7%B1%E5%9C%B3&start=0&count=10';
  var response = await http.get(url);

  print('Response status:${response.statusCode}');
   print('Response body:${response.body}');

  if(response.statusCode==200){
    var responseJson = json.decode(response.body);
    for(dynamic data in responseJson['subjects']){
      HotMovieData hotMovieData = HotMovieData.fromJson(data);
      serverDataList.add(hotMovieData);
    }
    setState((){
      hotMovies = serverDataList;
    });
  }*/
}