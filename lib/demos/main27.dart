
import 'package:flutter/material.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';
/*
* 标题栏图标,颜色以及tabbar切换,settings,写在设置按钮页面
* 用tabcontroller来控制,更精细,比如可以监听
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








