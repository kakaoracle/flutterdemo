
import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';
import 'package:kaka/routes/Routes.dart';

/*
* 常见的按钮组件以及自定义按钮组件
* 先设置首页为按钮演示页面
* */

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 这里也可以不写,直接将tabs1用路由管理了,但是需要声明initialroute
      //home: Tabs1(),
      debugShowCheckedModeBanner: false, //去掉模拟器的右上角调试图标
      initialRoute: '/buttonpage',
      // 命名路由需要定义在此根目录下
      // onGenerateRoute是一个变量,因此不用加括号
      onGenerateRoute:onGenerateRoute
    );
  }

}








