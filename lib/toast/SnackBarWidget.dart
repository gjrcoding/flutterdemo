import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() =>  runApp(SnackBarWidget());

class SnackBarWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snack bar',
      theme: ThemeData(),
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'hello snack bar'),
        body: Builder(builder: (context)=>RaisedButton(onPressed: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('hello snack'),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.yellow,
                action: SnackBarAction(label: 'test', onPressed: (){
                  print('hello world');
                }),
              )
          );
        },
          child: Text('snackbar'),
        )),
      ),
    );
  }
}