import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget());

class TextFieldWidget extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  void _getText() {
    print(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello textfield',
      theme: ThemeData(primaryColor: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello textfield'),
        ),
        body: TextField(
          controller: _controller,
          textInputAction: TextInputAction.done,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _getText,
          tooltip: 'done',
          child: Icon(
            Icons.done
          ),
        ),
      ),
    );
  }
}
