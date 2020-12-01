import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaka/pages/CheckBox.dart';
import 'package:kaka/pages/ProductPage.dart';
import 'package:kaka/pages/ProductPage1.dart';
import 'package:kaka/pages/Tabs1.dart';
import 'package:kaka/pages/Tabs2.dart';
import 'package:kaka/pages/TextField.dart';
import 'package:kaka/pages/User.dart';
import 'package:kaka/pages/Button.dart';
import 'package:kaka/titlebar/AppBar.dart';
import 'package:kaka/titlebar/AppBar1.dart';

// 配置路由
final routes = {
  '/':(context,{arguments}) => Tabs1(),
  '/tabs2':(context) => Tabs2(),
  '/textfield':(context) => TextFieldDemoPage(),
  '/checkbox':(context) => CheckBoxPage(),

  // 命名路由,不传值
  '/product':(context)=>ProductPage(),
  // 命名路由,传值,因为入参多个,所以要声明自定义的参数名arg
  '/product1':(context,{arguments})=>ProductPage1(arg:arguments),

  '/appbar':(context) => AppBarDemoPage(),
  '/appbar1':(context) => AppBarDemoPage1(),

  '/user' :(context) => UserPage(),
  '/buttonpage':(context) => ButtonPage(),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings){
    // 统一处理
    final String name = settings.name;
    final Function pageContentBuilder = routes[name];
    if(pageContentBuilder != null) {
      if(settings.arguments != null){
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context,arguments:settings.arguments)
        );
        return route;
      }else{
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context)
        );
        return route;
      }
    }
  };