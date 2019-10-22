import 'package:flutter/material.dart';

void main() => runApp(PersistentBottomSheetWidget());

class PersistentBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'test',
      home: Scaffold(
        appBar: AppBar(title: Text('persistent bottom sheet'),),
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