import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';

// 与Home类区别是路由跳转采用命名路由
class HomePagePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState1();
  }
  
}

class HomePageState1 extends State<HomePagePage1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到商品页面不传值"),
          onPressed: (){
            Navigator.pushNamed(context, "/product");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到商品页面并传值"),
          onPressed: (){
            Navigator.pushNamed(context, "/product1",arguments: {
              "pid":"3456"
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        //
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("测试demo26,"),
          onPressed: (){
            Navigator.pushNamed(context, "/appbar1");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
  
}






