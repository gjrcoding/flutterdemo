import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main(){
  runApp(DialogDemoWidget());
}

class DialogDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dialog demo',
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'dialog demo'),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('alertdialog'),
                onPressed: () {
                  Navigator.of(context).pushNamed("/AlertDialogs");
                }),
            RaisedButton(
                child: Text('aboutdialog'),
                onPressed: () {
                  Navigator.of(context).pushNamed("/AboutDialogs");
                }),
            RaisedButton(
                child: Text('CupertinoAlertWidget'),
                onPressed: () {
                  Navigator.of(context).pushNamed("/CupertinoAlertWidget");
                }),
            RaisedButton(
                child: Text('BottomSheetWidget'),
                onPressed: () {
                  Navigator.of(context).pushNamed("/BottomSheetWidget");
                }),
            RaisedButton(
                child: Text('PersistentBottomSheetWidget'),
                onPressed: () {
                  Navigator.of(context).pushNamed("/PersistentBottomSheetWidget");
                })
          ],
        ),
      ),
    );
  }
}
