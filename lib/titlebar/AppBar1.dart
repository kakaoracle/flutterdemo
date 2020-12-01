


import 'package:flutter/material.dart';

class AppBarDemoPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // 数量必须要配置
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text:"热门"),
                    Tab(text:"推荐"),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第2个tab"),
                ),
                ListTile(
                  title: Text("第2个tab"),
                )
              ],
            )
          ],
        ),
      )
    );
  }

}