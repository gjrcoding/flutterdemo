import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(JsonLoading());
}

class JsonLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json loading',
      theme: ThemeData(primaryColor: Colors.yellow),
      home: SampleAppPager(),
    );
  }
}

class SampleAppPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SampleState();
  }
}

class SampleState extends State {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  showLoadingDialog() {
    return widgets.length == 0;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    }
    return getListView();
  }

  getProgressDialog() {
    return Center(child: CircularProgressIndicator());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppWidget.appBarWidget(context, 'json loading'),
      body: getBody(),
    );
  }

  getListView() {
    return ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        });
  }

  getRow(int position) {
    return Padding(padding: EdgeInsets.all(10.0), child: Text("Row ${widgets[position]["title"]}"));
  }

  loadData() async {
    String dataUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataUrl);
    setState(() {
      widgets = json.decode(response.body);
    });
  }
}
