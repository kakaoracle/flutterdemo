import 'package:flutter/material.dart';
import 'package:kaka/pages/Tabs.dart';

/*
* bottomnavigationBar
* 底部导航栏
* 文件第一次分离
* */

class BottomnavigationBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabs());
  }
}
