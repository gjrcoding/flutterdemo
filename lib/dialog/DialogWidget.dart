import 'package:flutter/material.dart';

void main() => runApp(DialogWidget());

/**
 * 1、showAboutDialog()
 * 2、showDialog()
 */

class DialogWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello dialog',
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('hello dialog'),),
        body: Builder(builder: (context)=> RaisedButton(
          onPressed: (){
            showDialog(context: context,
            builder: (context)=>SimpleDialog(
              title: Text('hello'),
              children: <Widget>[
                SimpleDialogOption(
                  child: Text('OK'),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                SimpleDialogOption(
                  child: Text('Cancel'),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
          },
          child: Text('RaisedButton'),
        )),
      ),
    );
  }
}

