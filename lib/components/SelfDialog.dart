import 'dart:async';

import 'package:flutter/material.dart';

class SelfDialog extends Dialog{

  // 自定义一个定时器,弹出3秒后如果不按关闭按钮也自动关闭
  _showTimer(context) {
    Timer.periodic(Duration(milliseconds: 2000),
        (time){
      Navigator.pop(context);
      time.cancel();
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency, //透明度
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text("关于我们"),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text("我是内容",textAlign: TextAlign.left,),
              ),
            ],
          ),
        )
      ),
    );
  }
}