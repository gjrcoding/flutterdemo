import 'package:flutter/material.dart';

class MyAppWidget {
  static Widget appBarWidget(BuildContext context, String title) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(title),
      backgroundColor: Colors.black,
      centerTitle: true,
      textTheme: TextTheme(
        display1: TextStyle(
          color: Colors.white60
        )
      ),
    );
  }
}
