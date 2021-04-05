import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* expanded扩展比率自适应布局组件
*
* */
class ExpandedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 0,
          child: IconContainer(Icons.home, Colors.cyan),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.search, Colors.yellowAccent),
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  // 容器颜色
  Color Ccolor = Colors.white;
  // 图标颜色
  Color Icolor = Colors.white;
  IconData icon;
  // 通过构造函数,动态构造图标,不需要写set/get方法
  IconContainer(this.icon, this.Ccolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.Ccolor,
      child: Icon(this.icon, size: 32, color: this.Icolor),
    );
  }
}
