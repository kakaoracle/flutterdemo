import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';

/* 网络请求,原生,dio,nodejs提供本地接口
* 首页使用dio路由
* */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 国际化
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        debugShowCheckedModeBanner: false, //去掉模拟器的右上角调试图标
        initialRoute: '/diodemo',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute: onGenerateRoute);
  }
}
