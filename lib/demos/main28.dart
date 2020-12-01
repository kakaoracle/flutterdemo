
import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';
import 'package:kaka/routes/Routes.dart';

/*
* 侧边栏抽屉组件drawer
* tabs1中的scaffold加drawer
* 左侧边栏点击"用户 空间"跳转到user页面
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








