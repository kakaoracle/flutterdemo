

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SwiperPageState();
  }

}

class SwiperPageState extends State<SwiperPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("title"),
      ),
      body:  new Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network("https://i.loli.net/2020/11/23/BKtdji9PbISoOey.jpg",fit: BoxFit.fill,);
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(), // 左右箭头
      ),
    );
  }
}
