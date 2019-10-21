import 'package:flutter/material.dart';

void main() =>  runApp(BottomSheetWidget());

class BottomSheetWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'BottomSheet',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BottomSheet'),
        ),
        body: Builder(builder: (context){
          return RaisedButton(
            child: Text('showBottomSheet'),
            onPressed: (){
              showBottomSheet(context: context, 
                  builder:(context)=> BottomSheet(
                  onClosing: (){}, 
                      builder: (context)=>Container(
                        height: 200,
                        color: Colors.blue,
                        child: Center(
                          child: RaisedButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                            child: Text('dismissBottomSheet'),
                          ),
                        ),
                      )));
            },
          );
        }),
      ),
    );
  }
}