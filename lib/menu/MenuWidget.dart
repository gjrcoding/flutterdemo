import 'package:flutter/material.dart';

void main() =>  runApp(MenuWidget());

class MenuWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'test menu',
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu Widget'),
          backgroundColor: Colors.pink,
        ),
        body: PopupMenuButton<MenuItem>(
          child: Text('更多'),
          onSelected: (MenuItem result){
            print('click'+result.toString());
          },
          itemBuilder: (BuildContext context)=><PopupMenuEntry<MenuItem>>[
            const PopupMenuItem<MenuItem>(
              value: MenuItem.menuA,
                child: Text('menu A')
            ),
            const PopupMenuItem<MenuItem>(
                value: MenuItem.menuB,
                child: Text('menu B')
            ),
            const PopupMenuItem<MenuItem>(
                value: MenuItem.menuC,
                child: Text('menu C')
            ),
            const PopupMenuItem<MenuItem>(
                value: MenuItem.menuD,
                child: Text('menu D')
            )
          ],
        ),
      ),
    );
  }
}

enum MenuItem{
  menuA,
  menuB,
  menuC,
  menuD
}