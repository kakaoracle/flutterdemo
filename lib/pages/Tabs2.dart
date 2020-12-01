import 'package:flutter/material.dart';
import 'package:kaka/pages/tabs/Home.dart';
import 'package:kaka/pages/tabs/Category.dart';
import 'package:kaka/pages/tabs/Home1.dart';
import 'package:kaka/pages/tabs/Settings.dart';
/*
* 命名路由,仅通过homepage1跳转到product页面
* settings用来凑数
*
* */
class Tabs2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState2();
  }
}

class TabsState2 extends State<Tabs2> {
  int _index =0;
  List pageList =[
    HomePagePage1(),
    CategoryPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flutter demo,tabs2"),),
      floatingActionButton: Container(
        height: 70,
        width: 80,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ) ,


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this.pageList[this._index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index){
          setState(() {
            _index = index;
            print(_index);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("index")
          ),
          // 盖住这个就行
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("category")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("settings")
          ),
        ],
      ),
      // 侧边栏抽屉组件
      // 如果有appbar的话,appbar会自动在返回图标处加上一个三横杠图标
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            // 注意加上row和expanded这层,要不然照片显示很难充满
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg"),
                    ),
                    accountName: Text("陈德照"),
                    accountEmail: Text("123@qq.com"),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg"),
                          fit: BoxFit.fill
                      )
                    ),
                  )

                  // drawerheader自定义的,但是也可以直接用useraccountsdrawerheader
                  /*DrawerHeader(
                    child: Text("标题"),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),*/
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("我的"),
              onTap: (){
                // 先隐藏,再跳转
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/user");
              },
            ),
            // 下划线
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("用户中心"),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("右侧侧边栏",),
      ),

    );
  }

}