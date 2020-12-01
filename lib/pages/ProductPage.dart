import 'package:flutter/material.dart';
import 'package:kaka/pages/Search.dart';

// 命名路由(不传值)
class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductPageState();
  }

}

class ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Text('这是一个商品页面'),
    );
  }

}






