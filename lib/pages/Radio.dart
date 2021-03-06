import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RadioPageState();
  }

}

class RadioPageState extends State<RadioPage> {
  int sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[

            Row(
              children: [
                Text("man"),
                Radio(
                  // 一定要配下面的三个值,value,onchanged,groupvalue
                  value: 1,
                  onChanged: (val){
                      setState(() {
                        this.sex = val;
                      });
                  },
                  groupValue: this.sex,
                ),
                Text("woman"),
                Radio(
                  value: 2,
                  onChanged: (val){
                    setState(() {
                      this.sex = val;
                    });
                  },
                  groupValue: this.sex,
                ),
              ],
            ),
            Row(
              children: [
                Text("${this.sex}"),
                Text(this.sex == 1 ? 'man' : 'woman')
              ],
            ),
            RadioListTile(
                value: 1,
                onChanged: (v){
                  setState(() {
                    this.sex = v;
                  });
                },
                groupValue: this.sex,
                title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg"),
              selected: this.sex==2,
              ),
            RadioListTile(
                value: 2,
                onChanged: (v){
                  setState(() {
                    this.sex = v;
                  });
                },
                groupValue: this.sex,
                title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg"),
              selected: this.sex==2,
            ),
            SizedBox(height: 40,),
            Switch(
              value: this.flag,
              onChanged: (v){
                setState(() {
                  this.flag = v;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}