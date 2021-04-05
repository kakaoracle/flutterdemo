import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 引入本地图片
* 1. 一张照片分四份，三份分别放在images目录下2.0x，3.0x，4.0x目录下，一份单独放一份
* 2. 在pubspec.yaml中声明文件
*
*
* */

class ShowImgApp1 extends StatelessWidget {
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
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: Image.asset(
          "images/a.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
