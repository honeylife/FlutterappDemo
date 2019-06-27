import 'package:flutter/material.dart';
class BaseTitleBar extends StatefulWidget implements PreferredSizeWidget{
  var title;
  BaseTitleBar(var title){
    this.title=title;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BaseState(title);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => null;

}

class _BaseState extends State<BaseTitleBar>{
  var title;
  _BaseState(var title){
    this.title=title;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new AppBar(
      title: new Text(title
      ,textAlign:TextAlign.center ,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          padding:const EdgeInsets.all(10.0),
          alignment:Alignment.centerLeft,
          color:Colors.white, onPressed: () {
          print("数据");
        },
        )
      ],
    );
  }

}

class AppBaseBar extends AppBar{
  var title;
  AppBaseBar(var title){
    this.title=title;
  }

}