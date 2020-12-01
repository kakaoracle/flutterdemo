

import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CheckBoxPageState();
  }

}

class CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            Checkbox(
                value: this.flag,
                onChanged: (val){
                  setState(() {
                    this.flag = val;
                  });
                },
              activeColor: Colors.red,
            )
          ],),
          Divider(),
          CheckboxListTile(
              value: this.flag,
              onChanged: (val){
                setState(() {
                  this.flag = val;
                });
              },
            title: Text("标题"),
            subtitle: Text("小标题"),
            secondary: Icon(Icons.help),
          ),
        ],
      ),
    );
  }
}