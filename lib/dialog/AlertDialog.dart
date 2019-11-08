import 'package:flutter/material.dart';
import 'package:flutter_app/base/MyAppWidget.dart';

void main() => runApp(MyAlertWidget());

class MyAlertWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, 'alertDialog'),
        body: Builder(builder: (context){
          return RaisedButton(
            onPressed: (){
              showDialog(context: context,
              builder: (context)=>AlertDialog(
                title: Text('Alertdialog'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('this is an alert dialog'),
                      Text('add two options...')
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('ok'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    child: Text('cancel'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ));
            },
            child: Text('showDialog'),
          );
        }),
      ),
    );
  }
}