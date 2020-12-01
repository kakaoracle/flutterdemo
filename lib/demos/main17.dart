import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* aspectratio组件
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
    return Container(
      width: 300,
      child: AspectRatio(
        // 宽高比是2
        aspectRatio: 2.0/1.0,
        child: Container(
          color: Colors.amber,
        ),
      ),
    );

  }

}





