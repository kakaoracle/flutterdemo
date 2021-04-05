import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/listData.dart';

/*
* stack层叠组件,结合position
*
* */

class StackPositionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.redAccent,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              // position没有alignment属性,只有top/left等
              top: 10,
              // 单独这样写就会重叠在一起,需要外层加上align
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 10,
              child: Icon(
                Icons.search,
                size: 40,
                color: Colors.blue,
              ),
            ),
            Positioned(
                left: 10,
                child: Icon(
                  Icons.send,
                  size: 40,
                  color: Colors.orange,
                )),
          ],
        ),
      ),
    );
  }
}
