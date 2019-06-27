
import 'package:flutter/material.dart';
import 'base/BaseTitleBar.dart';
class MyPage extends StatelessWidget {
  final String title;
  MyPage({this.title}){
  }
  @override
  Widget build(BuildContext context) {
    return new  MaterialApp(
      title: this.title,
      home: new Scaffold(
        appBar: new BaseViewBar(
          childView: new BaseTitleBar(title),
          preferredSize: Size.fromHeight(50.0),
        ),
        body: new Text("这就是一个额页面啊"),
      ) ,
    );
  }
}
