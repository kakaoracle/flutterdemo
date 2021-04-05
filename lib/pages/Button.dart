import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("普通按钮"),
                color: Colors.blueGrey,
                textColor: Colors.white,
                elevation: 20, // 阴影
                onPressed: () {
                  print("custom");
                },
              ),
              RaisedButton.icon(
                icon: Icon(Icons.home),
                label: Text("图标按钮"),
                onPressed: null,
              ),
            ],
          ),
          // 设置一个按钮的宽度和高度
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  child: Text("设置了宽高的普通按钮"),
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  elevation: 20, // 阴影
                  onPressed: () {
                    print("custom");
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text("宽高自适应按钮"),
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  elevation: 20, // 阴影
                  onPressed: () {
                    print("custom");
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
              child: Text("圆角按钮"),
              color: Colors.blueGrey,
              textColor: Colors.white,
              elevation: 20, // 阴影
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                print("custom");
              },
            ),
            Container(
              height: 80,
              child: RaisedButton(
                child: Text("圆形按钮"),
                color: Colors.blueGrey,
                textColor: Colors.white,
                elevation: 20, // 阴影
                splashColor: Colors.grey, // 长按的水波纹
                shape: CircleBorder(side: BorderSide(color: Colors.white)),
                onPressed: () {
                  print("custom");
                },
              ),
            ),
            FlatButton(
              child: Text("扁平式按钮"),
              color: Colors.blue,
              textColor: Colors.yellowAccent,
              onPressed: () {
                print("");
              },
            ),
            OutlineButton(
              child: Text("outline btn"),
              color: Colors.amber,
              textColor: Colors.amber,
              onPressed: () {
                print("");
              },
            ),
          ]),
          // buttonbar主要用来统一管理同一组图标样式而已
          Row(
            children: <Widget>[
              ButtonBar(
                children: [
                  RaisedButton(
                    child: Text("普通按钮1"),
                    color: Colors.amber,
                  ),
                  RaisedButton(
                    child: Text("普通按钮2"),
                    color: Colors.amber,
                  )
                ],
              ),
            ],
          ),
          // 自定义按钮
          Row(
            children: <Widget>[
              ButtonBar(
                children: [
                  MyBtn(
                    text: "自定义按钮",
                    height: 80.0,
                    width: 80.0,
                    pressed: () {
                      print("123");
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 自定义按钮组件
class MyBtn extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;

  MyBtn({this.text, this.pressed, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
