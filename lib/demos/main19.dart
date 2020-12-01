import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* card组件_图文
*
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
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // 由于设置图文的宽高比,因此引入aspectratio
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
              ),
              ListTile(
                // 用clipoval设置一个小图
                // leading: ClipOval(
                //   child: Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,height: 60,width: 60,),
                // ),
                // 也可以用circleavatar,主要用于处理头像
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg"),
                ),
                title: Text("李四",style: TextStyle(fontSize: 28),),
                subtitle: Text("中级工程师"),
              ),
            ],
          ),
        ),

      ],
    );

  }

}





