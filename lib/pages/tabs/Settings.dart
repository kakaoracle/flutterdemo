

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingsState();
  }
  
}
/*
* 在demo27中,增加实现了一个类SingleTickerProviderStateMixin
* 不要两级标题就是将下层的放到上层的titile中
* */
class SettingsState extends State<SettingsPage> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TabBar(
                controller: this.tabController,// necessory
                tabs: <Widget>[
                  Tab(text: "热销",),
                  Tab(text: "推荐",)
                ],
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: this.tabController,
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐")),

        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      vsync: this,
      length: 2
    );
    // 监听
    tabController.addListener(() {
      print(tabController.index);
    });
  }
}