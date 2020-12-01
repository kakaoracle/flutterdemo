import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* gridview.builder网格布局
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
  Widget _getListData(context,index){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromRGBO(233, 233, 233, 0.9),
              width: 1
          )
      ),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12,),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      // gridviewbuilder中不能直接写左右间距,需要通过下面这个方法引入
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 2,
      ),
      itemBuilder: this._getListData,
    );

  }

}





