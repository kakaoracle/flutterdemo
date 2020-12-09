

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kaka/components/SelfDialog.dart';

class DialogPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DialogPageState();
  }

}

class DialogPageState extends State<DialogPage>{

  _alertDialog() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示信息"),
          content: Text("您确定要删除吗?"),
          actions: <Widget>[
            FlatButton(
              child: Text("yes"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        );
      }
    );
  }

  _simpleDialog() async{
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("选择内容"),
          children: [
            SimpleDialogOption(
              child: Text("option A"),
              onPressed: (){

              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option B"),
              onPressed: (){

              },
            ),
          ],
        );
      }
    );
    print(result);
}

_modelBottomSheet() async{
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("A"),
                onTap: (){},
              ),
              ListTile(
                title: Text("B"),
                onTap: (){},
              ),
            ],
          ),
        );
      }
    );
}

_toast() {
  Fluttertoast.showToast(
      msg: " 我是提示信息",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Dialog"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("alert弹出窗"),
              onPressed: _alertDialog,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("select 弹出窗"),
              onPressed: _simpleDialog,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("actionsheet底部 弹出窗"),
              onPressed: _modelBottomSheet,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("toast第三方 弹出窗"),
              onPressed: _toast,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("自定义dialog"),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) {
                    return SelfDialog();
                  }
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
