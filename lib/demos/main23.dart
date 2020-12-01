
import 'package:flutter/material.dart';
import 'package:kaka/pages/Tabs.dart';

/*
* 路由
* 普通路由: 既可以跳转,也可以传值,适合中小型项目
* */

void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs()
    );
  }

}








