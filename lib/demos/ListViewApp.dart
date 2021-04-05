import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 列表（垂直列表，垂直图文列表，水平列表，动态列表，矩阵式列表）
*
*
* */

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("flutter demo"),
            ),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // listview即是列表
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 40,
          ),
          title: Text(
            "一级标题",
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          leading: Icon(Icons.pages),
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.yellow,
          ),
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
      ],
    );
  }
}
