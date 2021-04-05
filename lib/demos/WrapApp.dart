import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* wrap组件实现流布局,与row/column不同的是mainaxis上空间不足就向crossaxis上扩展显示
*
* */

class WrapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义一个按钮
    return MyButton("第一集");
  }
}

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
