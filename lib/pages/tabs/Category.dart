import 'package:flutter/material.dart';
import 'package:kaka/pages/tabs/Form.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CategoryState();
  }
  
}

class CategoryState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到表单页面并传值"),
          onPressed: (){
            Navigator.of(context).push(
              // ==>相当于是return
              MaterialPageRoute(
                builder: (context) => FormPage("跳转传的值")
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
  
}