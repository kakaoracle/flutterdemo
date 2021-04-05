import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaka/bloc/LoginBloc.dart';
import 'package:kaka/routes/OnGenerateRoute.dart';

class BlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        // 在最顶级的目录中定义block工具类,然后才能在context中监听到状态
        create: (context) => LoginBloc(),
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false, //去掉模拟器的右上角调试图标
          initialRoute: '/loginPage',
          // 命名路由需要定义在此根目录下
          onGenerateRoute: onGenerateRoute,
        ));
  }
}
