import 'package:flutter/material.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';

/*
* floatingbutton,做成一个闲鱼那样中间突起的+号按钮
* tabs2
* */

class FloatingbuttonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 这里也可以不写,直接将tabs1用路由管理了,但是需要声明initialroute
        //home: Tabs1(),
        debugShowCheckedModeBanner: false, //去掉模拟器的右上角调试图标
        initialRoute: '/tabs2',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute: onGenerateRoute);
  }
}
