import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* 列表_动态列表
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
  // 自定义方法1
  /*List<Widget> _getData(){
    List<Widget> list = new List();
    for(var i =0;i<4;i++){
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
  }*/

  // 自定义方法2
  List<Widget> _getData1(){
    var tempList = listData.map((e){
      return ListTile(
        title: Text(e["title"]),
        leading: Image.network(e["imageUrl"]),
        subtitle: Text(e["author"]),
      );
    }).toList();

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData1(),
    );
  }

}




