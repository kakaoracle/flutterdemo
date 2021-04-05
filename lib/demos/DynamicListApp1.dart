import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* 列表_动态列表_flutter自身封装的一个listviewbuilder
* */

class DynamicListApp1 extends StatelessWidget {
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
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(listData[index]["title"]),
        );
      },
    );
  }
}
