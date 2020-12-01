import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';

class HomePagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
  
}

class HomePageState extends State<HomePagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索"),
          onPressed: (){
            // 路由跳转的固定写法
            // 跳转后页面的返回按钮是框架自带的
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>SearchPage()
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到表单页面并传值"),
          onPressed: (){

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
  
}






