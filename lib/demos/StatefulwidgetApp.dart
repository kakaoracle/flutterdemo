import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* statefulwidget有状态组件
*
* */

class StatefulwidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: HomePage1(),
    ));
  }
}

// 无状态组件
class HomePage extends StatelessWidget {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Text("${this.countNum}"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("button"),
          onPressed: () {
            this.countNum++;
            print(this.countNum);
          },
        )
      ],
    );
  }

  HomePage();
}

// 有状态组件
class HomePage1 extends StatefulWidget {
  @override
  State createState() {}
}

class HomePage1State extends State<HomePage1> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
            children: this.list.map((e) {
          return ListTile(
            title: Text(e),
          );
        }).toList()),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("button"),
          onPressed: () {
            setState(() {
              this.list.add("new data 1");
              this.list.add("new data 2");
            });
          },
        )
      ],
    );
  }
}
