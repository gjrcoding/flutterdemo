import 'package:flutter/material.dart';

void main() =>  runApp(SnackBarWidget());

class SnackBarWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snack bar',
      theme: ThemeData(
          primaryColor: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello snack bar'),
        ),
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