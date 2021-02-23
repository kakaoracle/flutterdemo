
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kaka/pages/Search.dart';
import 'package:kaka/routes/Routes.dart';

/*
* 对话框,alertdialog,自定义dialog
* 首页跳转到dialog
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
        initialRoute: '/dialog',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute:onGenerateRoute
    );
  }

}







