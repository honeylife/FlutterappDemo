import 'package:flutter/material.dart';
import '../json/listData.dart';

class FindPagee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FindPageState();
}

class _FindPageState extends State<FindPagee> {
  List<Widget> _getData() {
    List<Widget> list = new List();
//    for (int i = 1; i < 20; i++) {
//      list.add(
//          ListTile(title: new Text("这是$i标题1"), subtitle: new Text("这是$i辅助消息")));
//    }
    var listtemp = listData.map((valuse) {
      return ListTile(
        title: Text(valuse["title"]),
      );
    });

    return listtemp.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: _getData(),
    );
  }
}
