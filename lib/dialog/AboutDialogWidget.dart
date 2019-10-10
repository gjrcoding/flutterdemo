import 'package:flutter/material.dart';

void main() => runApp(AboutDialogWidget());

/**
 * 1、showAboutDialog()
 * 2、showDialog()
 */

class AboutDialogWidget extends StatelessWidget{
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
            showAboutDialog(context: context,
            applicationName: '对话框',
            applicationVersion: '1.0.0');
          },
          child: Text('RaisedButton'),
        )),
      ),
    );
  }
}

