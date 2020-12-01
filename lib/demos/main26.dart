
import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';
import 'package:kaka/routes/Routes.dart';

/*
* 标题栏图标,颜色以及tabbar切换,home1中按钮跳转
* appbar是两层标题
* appbar1是去掉上面标题,仅保留自定义标题,无法去掉返回按键,因为这是一个超链接页面,除非是tab页面
* 才会没有
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
      initialRoute: '/',
      // 命名路由需要定义在此根目录下
      // onGenerateRoute是一个变量,因此不用加括号
      onGenerateRoute:onGenerateRoute
    );
  }

}








