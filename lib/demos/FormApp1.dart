import 'package:flutter/material.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';

/*
* 常用表单控件,Radio,radiolisttile,switch
* 首页跳转到radiodemopage
*
*
* */

class FormApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 这里也可以不写,直接将tabs1用路由管理了,但是需要声明initialroute
        //home: Tabs1(),
        debugShowCheckedModeBanner: false, //去掉模拟器的右上角调试图标
        initialRoute: '/radio',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute: onGenerateRoute);
  }
}
