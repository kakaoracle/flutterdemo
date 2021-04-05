import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 列表_水平布局
*
* */

class ListHorizontalApp extends StatelessWidget {
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
    /*
    // 这样上下会自动扩展,高度会自适应,不如return一个container,然后child是一个listview
    return ListView(
      // 默认是垂直,这里改为水平
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180.0,
          height: 180,
          color: Colors.deepOrange,
        ),
        Container(
          width: 180.0,
          height: 180,
          color: Colors.blue,
        ),
        Container(
          width: 180.0,
          height: 180,
          color: Colors.black,
        ),
      ],
    );*/
    return Container(
      height: 180,
      child: ListView(
        // 默认是垂直,这里改为水平
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            height: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180.0,
            height: 180,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
