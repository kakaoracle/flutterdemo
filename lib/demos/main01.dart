import 'package:flutter/material.dart';
/*、
* 标准的一个工程
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
        child: Text("i am a litter text i am a litter text i am a litter text i am a litter text",
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              letterSpacing: 5.0
          ),
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




