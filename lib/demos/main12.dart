import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* padding组件
* 有些元素没有padding属性,因此引入一个单独的padding组件包在外面
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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child:GridView.count(
          crossAxisCount: 2,
          // 防止图片变形
          childAspectRatio: 1.7,
          children: <Widget>[
            Padding(
              // 这里只能设置左边,如果设置为10,10,10,中间就会变在20,因此需要在外层再嵌套一层padding
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.cover,),
            ),
            // boxfit.cover用来充满容器
          ],
        ),
    );




  }

}





