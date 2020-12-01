import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 列表_图文
*
*
* */

void main(){
  runApp(MyApp()
  );
}




class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("flutter demo"),
            ),
            body: HomeContent()
        )
    );
  }

}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // listview即是列表
    return ListView(
      children: <Widget>[
        ListTile(
          // 加载一张在线图片
          leading: Image.network("https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",),
          title: Text("一级标题",
                      style: TextStyle(
                        fontSize: 24
                      ),),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          leading: Icon(Icons.pages),
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
          trailing: Image.network("https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",),
        ),
        ListTile(
          leading: Icon(Icons.home,color: Colors.yellow,),
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
      ],
    );
  }

}




