
import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';
import 'package:kaka/routes/Routes.dart';

/*
* 路由
* 命名路由:适合大型项目,用来管理路由
* 但是传值太麻烦,下面是一个标准的传值写法
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
      initialRoute: '/',
      // 命名路由需要定义在此根目录下
      // onGenerateRoute是一个变量,因此不用加括号
      onGenerateRoute:onGenerateRoute
    );
  }

}








