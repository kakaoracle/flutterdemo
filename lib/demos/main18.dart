import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* card组件
*
* */

void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("flutter demo"),),
        body: LayoutDemo(),
      )
    );
  }

}
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三",style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话:13098768989",style: TextStyle(fontSize: 28),),
              ),
              ListTile(
                title: Text("地址:长春朝阳",),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四",style: TextStyle(fontSize: 28),),
                subtitle: Text("中级工程师"),
              ),
              ListTile(
                title: Text("电话:13098768989",style: TextStyle(fontSize: 28),),
              ),
              ListTile(
                title: Text("地址:北京朝阳",),
              ),
            ],
          ),
        ),
      ],
    );

  }

}





