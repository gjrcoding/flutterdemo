import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() => runApp(CupertinoAlertWidget());

class CupertinoAlertWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'cupertinoalert',
     home: Scaffold(
       appBar: MyAppWidget.appBarWidget(context, 'cupertino alert'),
       body: Builder(builder: (context){
         return RaisedButton(
           child: Text('show cupertino alert'),
           onPressed: (){
             showDialog(context: context,
             builder: (context)=>CupertinoAlertDialog(
               title: Text('dialog'),
               content: Text('this is a cupertino alert dialog'),
               actions: <Widget>[
                 CupertinoDialogAction(
                   child: Text('ok'),
                   onPressed: (){
                     Navigator.of(context).pop();
                   },
                 ),
                 CupertinoDialogAction(
                   child: Text('cancel'),
                   onPressed: (){
                     Navigator.of(context).pop();
                   },
                 )
               ],
             ));
           },
         );
       }),
     ),
   );
  }
}