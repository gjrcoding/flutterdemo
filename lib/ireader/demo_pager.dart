import 'package:flutter/material.dart';
import 'package:flutter_app/boxconstraint/BoundedConstraintWidget.dart';
import 'package:flutter_app/boxconstraint/InfiniteConstraintWidget.dart';
import 'package:flutter_app/dialog/AlertDialog.dart';
import 'package:flutter_app/funcwidget/DeviceTools.dart';
import 'package:flutter_app/gesture/GestureWidget.dart';
import 'package:flutter_app/http/JsonLoaderLoading.dart';
import 'package:flutter_app/image/NetImageWidget.dart';
import 'package:flutter_app/layout/ColumnWidget.dart';
import 'package:flutter_app/menu/MenuWidget.dart';
import 'package:flutter_app/text/TextWidget.dart';
import 'package:flutter_app/toast/SnackBarWidget.dart';

class DemoRoutes {
  String title;
  Widget route;

  DemoRoutes(this.title, this.route);
}

class DemoListWidget extends StatelessWidget {
  List<DemoRoutes> demoList = [
    DemoRoutes('text', TextWidget()),
    DemoRoutes('toast', SnackBarWidget()),
    DemoRoutes('menu', MenuWidget()),
    DemoRoutes('layout', ColumnWidget()),
    DemoRoutes('image', NetImageWidget()),
    DemoRoutes('http', JsonLoading()),
    DemoRoutes('gesture', GestureActionWidget()),
    DemoRoutes('funcwidget', MediaQueryWidget()),
    DemoRoutes('dialog', MyAlertWidget()),
    DemoRoutes('constraint', InfiniteConstraintWidget('hello world'))
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white60,
        child: ListView.separated(
          itemCount: demoList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ListTile(
                title: Text(demoList[index].title),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return demoList[index].route;
                }));
              },
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              constraints: BoxConstraints.tightFor(height: 0.5),
              color: Colors.grey,
            );
          },
        ));
  }
}

/*class DemoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('text widget'),
        ),
        ListTile(
          title: Text('dialog widget'),
        ),
        ListTile(
          title: Text('toast widget'),
        ),
      ],
    );
  }
}*/
