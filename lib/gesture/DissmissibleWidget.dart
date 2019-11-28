import 'package:flutter/material.dart';
import 'package:flutterdemos/base/MyAppWidget.dart';

void main() {
  runApp(DissmissibleWidget());
}

class DissmissibleWidget extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {

    return DismissibleState();
  }
}

class DismissibleState extends State {
  List<String> items = List.generate(30, (i) => '列表项 ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '滑动删除',
      home: Scaffold(
        appBar: MyAppWidget.appBarWidget(context, '滑动删除'),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Dismissible(
                  key: Key(item),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                    Scaffold
                        .of(context)
                        .showSnackBar(SnackBar(content: Text('${item} 被删除了'),));
                  },
                  child: ListTile(
                    title: Text('$item'),
                  ));
            }),
      ),
    );
  }
}
