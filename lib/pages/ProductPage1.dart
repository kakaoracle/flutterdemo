import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';

// 命名路由(传值)
class ProductPage1 extends StatefulWidget {
  Map arg;
  ProductPage1({this.arg});

  @override
  State<StatefulWidget> createState() {
    return ProductPageState1(this.arg);
  }

}

class ProductPageState1 extends State<ProductPage1> {
  Map args;
  ProductPageState1(this.args);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      //body: Text('这是一个商品页面,传进来的值是${args["pid"]}'),//下面也可以传值
      body: Text('这是一个商品页面,传进来的值是:'+args["pid"]),
    );
  }

}






