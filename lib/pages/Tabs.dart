import 'package:flutter/material.dart';
import 'package:kaka/pages/tabs/Home.dart';
import 'package:kaka/pages/tabs/Category.dart';
import 'package:kaka/pages/tabs/Home1.dart';
import 'package:kaka/pages/tabs/Settings.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabsState();
  }
}

class TabsState extends State<Tabs> {
  int _index = 0;
  List pageList = [
    HomePagePage(),
    CategoryPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: this.pageList[this._index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
            print(_index);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("index")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("category")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("settings")),
        ],
      ),
    );
  }
}
