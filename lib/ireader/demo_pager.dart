import 'package:flutter/material.dart';
import 'package:flutterdemos/boxconstraint/BoundedConstraintWidget.dart';
import 'package:flutterdemos/boxconstraint/InfiniteConstraintWidget.dart';
import 'package:flutterdemos/dialog/AlertDialog.dart';
import 'package:flutterdemos/funcwidget/DeviceTools.dart';
import 'package:flutterdemos/gesture/GestureWidget.dart';
import 'package:flutterdemos/http/JsonLoaderLoading.dart';
import 'package:flutterdemos/image/NetImageWidget.dart';
import 'package:flutterdemos/layout/ColumnWidget.dart';
import 'package:flutterdemos/menu/MenuWidget.dart';
import 'package:flutterdemos/text/TextWidget.dart';
import 'package:flutterdemos/toast/SnackBarWidget.dart';

import 'custom_appbar.dart';

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
    return Column(
      children: <Widget>[
        //appbar
        CustomAppBar(),
        Expanded(
            child: Container(
                color: Colors.white,
                child: ListView.separated(
                  itemCount: demoList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: ListTile(
                        title: Text(demoList[index].title),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
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
                )))
      ],
    );
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
