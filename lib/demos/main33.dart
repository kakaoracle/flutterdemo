
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kaka/pages/Search.dart';
import 'package:kaka/routes/Routes.dart';

/*
* 日期与时间戳以及第三方时间组件(flutter-cupertino-date-picker)/少用,有bug
* 带tino的表示是ios插件
* 首页设置为了picker
* 第三方库,date_format
* 国际化组件
* */

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 国际化
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh','CH'),
          const Locale('en','US'),
        ],
        debugShowCheckedModeBanner: false, //去掉模拟器的右上角调试图标
        initialRoute: '/picker',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute:onGenerateRoute
    );
  }

}








