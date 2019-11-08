import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

void main() => runApp(PersistentBottomSheetWidget());

class PersistentBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'test',
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'persistent bottom sheet'),
        body: Builder(builder: (context) {
          return RaisedButton(
              child: Text('showPersistentBottomSheet'),
              onPressed: () {
                showBottomSheet(context: context, builder: (context) =>
                    BottomSheet(
                      onClosing: () {},
                      builder: (context) =>
                          Container(
                            height: 200,
                            color: Colors.yellow,
                            child: Center(
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('dismissBottomSheet'),
                              ),
                            ),
                          ),
                    ));
              });
        }),
      ),
    );
  }
}