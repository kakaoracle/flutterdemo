import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';

/*
* 轮播图,flutter_swiper
* 首页路由到swiper
* */

class SwiperApp extends StatelessWidget {
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
        initialRoute: '/swiper',
        // 命名路由需要定义在此根目录下
        // onGenerateRoute是一个变量,因此不用加括号
        onGenerateRoute: onGenerateRoute);
  }
}
