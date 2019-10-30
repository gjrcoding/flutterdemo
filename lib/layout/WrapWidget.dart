import 'package:flutter/material.dart';

void main() =>  runApp(WrapWidget());

class WrapWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('流式布局'),
        ),
        body: Wrap(
          children: <Widget>[
            Text('hello flutter' * 50),
            Image.asset(
              "images/60f10f01gy1g7r31tzp8ej221634o1ky.jpg",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}