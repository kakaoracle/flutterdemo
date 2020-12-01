import 'package:flutter/material.dart';
/*
* 展示一个网络图片
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
    return Center(
      child: Container(
        child: Image.network("https://i.loli.net/2020/11/18/oNXteKvjSlximO8.jpg",
                alignment: Alignment.bottomRight,
                /*color: Colors.blue,
                colorBlendMode: BlendMode.screen,*/
                fit: BoxFit.cover,
                ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
                color: Colors.blue,
                width: 2.0
            )
        ),
      ),
    );
  }

}




