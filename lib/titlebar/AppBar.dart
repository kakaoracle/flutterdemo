


import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // 数量必须要配置
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print("123");
            },
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:"热门"),
              Tab(text:"推荐"),
            ],
          ),
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