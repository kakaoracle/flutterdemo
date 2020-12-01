import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* gridview.count网格布局
* */

void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("flutter demo"),),
        body: LayoutDemo(),
      )
    );
  }

}
class LayoutDemo extends StatelessWidget{
  List<Widget> _getListData(){
    // 构建一个list
    /*List<Widget> list = new List();
    for(var i=0;i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "这是第$i条数据",
          style: TextStyle(color: Colors.blue,fontSize: 20),
        ),
        color: Colors.amberAccent,
      ));
    }*/
    // 从rec资源中加载list
    var list = listData.map((e) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1
          )
        ),
        child: Column(
          children: <Widget>[
            Image.network(e['imageUrl']),
            SizedBox(height: 10,),// text没有margin,只能加一个容器
            Text(e['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            )
          ],
        ),
      );
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10, // 左右间距
      mainAxisSpacing: 10, // 上下间距
      // 一行的个数
      crossAxisCount: 2,
      children: this._getListData(),
    );

  }

}





