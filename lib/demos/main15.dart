import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* stack层叠组件,结合align
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
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.redAccent,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
                // 单独这样写就会重叠在一起,需要外层加上align
                child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Align(
                alignment: Alignment.center,
                child: Icon(Icons.search,size: 40,color: Colors.blue,),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.send,size: 40,color: Colors.orange,)
            ),


          ],
        ),
      ),
    );

  }

}





