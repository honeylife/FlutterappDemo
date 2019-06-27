import 'package:flutter/material.dart';

class MinePagee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends State<MinePagee> {
  List<Widget> _getDataList() {
    List<Widget> list = new List();
    for (int i = 1; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "数据的$i展示",
          style: TextStyle(color: Colors.brown, fontSize: 20.0),
        ),
        decoration: BoxDecoration(
          color:Colors.cyan[100] ,
          border: Border.all(
            color: Colors.yellow,
            width: 1.0
          )
        ),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7,  // 宽度与高度的比例
      children: this._getDataList(),
    );
  }
}
