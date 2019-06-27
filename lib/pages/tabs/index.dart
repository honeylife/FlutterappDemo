import 'package:flutter/material.dart';
import 'package:flutterapp/twopages/MyPage.dart';

class IndexPagee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPagee> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new Row(
//      children: <Widget>[
//        IconImage(
//          Icons.print,
//          color: Colors.white,
//          size: 45,
//          bgColor: Colors.greenAccent,
//        ),
//        IconImage(
//          Icons.map,
//          color: Colors.white,
//          size: 45,
//          bgColor: Colors.lightGreen[200],
//        ),
//        IconImage(
//          Icons.ac_unit,
//          color: Colors.white,
//          size: 45,
//          bgColor: Colors.deepPurple,
//        ),
//      ],
//    );

    return new StackView();
  }
}

class IconImage extends StatelessWidget {
  double size = 32;
  Color color;
  Color bgColor;
  IconData _iconData;

  IconImage(this._iconData, {this.color, this.size, this.bgColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 100.0,
      width: 100.0,
      color: this.bgColor,
      child: Icon(
        this._iconData,
        size: this.size,
        color: this.color,
      ),
    );
  }
}

class StackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 300,
            color: Colors.cyan[100],
          ),
          new Center(child: new RaisedButton(onPressed: () {
//            Navigator.push(context, MyPage("A"));
            Navigator.of(context).pushNamed("/a");
          }
          ,
            child: new Text("这是一个要点击的文本",
            style: TextStyle(fontSize: 20.0,
            color: Colors.deepPurple[400]),),
          ))
        ],
      ),
    );
  }
}
