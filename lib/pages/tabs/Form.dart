import 'package:flutter/material.dart';

class FormPage extends StatelessWidget{
  String titleDemo;

  // 变量一般不要以下划线作为首字母
  FormPage(this.titleDemo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 一般该页面被跳转时,左上方会自带一个返回按钮,但是也可以自己加在右下角一个浮动返回按钮
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(titleDemo),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
        ],
      ),
    );
  }

}