

import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldDemoPageState();
  }

}

class TextFieldDemoPageState extends State<TextFieldDemoPage> {
  // 利用texteditingcontroller内置类实现预置数据
  TextEditingController username =  new TextEditingController();
  @override
  void initState(){
    super.initState();
    username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // 普通的文本框
        // child: TextFieldGroup(),
        // 可以传值的文本框
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              controller:username,
              onChanged: (value) {
                username.text = value;
              },
            ),
            Container(
              width: double.infinity, // 宽度自适应
              child: RaisedButton(
                child:  Text('login in'),
                onPressed: (){
                  print(this.username.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class TextFieldGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
            hintText: "请输入搜索内容",
            border:OutlineInputBorder(),
          ),
        ),
        TextField(
          maxLines: 3,
          decoration: InputDecoration(
            hintText: "多行文本框",
            border:OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "密码框",
              border:OutlineInputBorder(),
              labelText: "密码"
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.people),
            hintText: "请输入用户名",
          ),
        ),
      ],
    );
  }

}