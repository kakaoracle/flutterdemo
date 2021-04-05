import 'package:flutter/material.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';

/*
* 路由替换和返回根路由
* 没demo,用
* Navigator.of(context).pushAndRemoveUtil(
*   new MaterialPageRoute(builder: (context) => new Tabs()),
*   (route) => route == null
* )
* */

class RouteApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 这里也可以不写,直接将tabs1用路由管理了,但是需要声明initialroute
        //home: Tabs1(),
        initialRoute: '/',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute: onGenerateRoute);
  }
}
