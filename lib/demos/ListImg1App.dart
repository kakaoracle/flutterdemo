import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 列表_图
* listview可以放任意组件widget
*
*
* */

class ListImg1App extends StatelessWidget {
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
      // 内边距
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
          "https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
        ),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          height: 20,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network(
          "https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
        ),
        Image.network(
          "https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
        ),
        Image.network(
          "https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
        ),
        Image.network(
          "https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
        ),
        Image.network(
          "https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
        ),
      ],
    );
  }
}
