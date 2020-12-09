import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class PickDatePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PickDatePageState();
  }
  
}

class PickDatePageState extends State<PickDatePage>{
  DateTime _dateTime = DateTime.now();
  DateTime now  = DateTime.now();
  // 定义一个组件
  _showDatePicker(){
   showDatePicker(
     context: context,
     initialDate: now,
     firstDate: DateTime(1980),
     lastDate: DateTime(2022),
   );
  }
  // 如果需要获取选中的日期,则
  _showDatePicker1() async{
    var result = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(1980),
      lastDate: DateTime(2022),
      //locale: Locale('zh'),
    );
    print(result);
  }

  @override
  void initState() {
    super.initState();
    print("当前时间为:${now}");
    print("当前时间的时间戳为:${now.microsecondsSinceEpoch}");
    print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    // 默认一定要返回一个scafold
    return Scaffold(
      appBar: AppBar(
        title:Text("DatePicker")
      ),
      body: Column(
        children: [
          // 仅仅是一个容器而已,有水波纹
          InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2018-12-19"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            onTap: (){
              _showDatePicker1();
            },
          ),
          SizedBox(height: 20,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("2018-12-01"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: (){
              _showDatePicker1();
            },
          ),
        ],
      ),
    );
  }
}