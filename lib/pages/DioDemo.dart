import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DioDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DioDemoPageState();
  }
}

class DioDemoPageState extends State<DioDemoPage> {
  _getData() async {
    var apiUrl = "http:192.168.0.5:3000/news";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      print(result.body);
    } else {
      print(result.statusCode);
    }
  }

  _postData() async {
    var apiUrl = "http:192.168.0.5:3000/dologin";
    var result = await http.post(apiUrl, body: {'username': '张三'});
    if (result.statusCode == 200) {
      print(json.decode(result.body));
    } else {
      print(result.statusCode);
    }
  }

  _dioGetData() async {
    Response rep = await Dio().get('http:192.168.0.5:3000/news');
    print(rep.data);
  }

  @override
  void initState() {
    super.initState();
    Map userInfo = {"username": "张三", "age": 20};
    // map -> jsonString
    print(json.encode(userInfo));
    String userInfoStr = '{"username":"张三","age":20}';
    print(json.decode(userInfoStr));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Dio"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("get"),
                onPressed: () {
                  _getData();
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("dio get"),
              ),
            ],
          ),
        ));
  }
}
