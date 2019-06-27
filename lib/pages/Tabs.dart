import 'package:flutter/material.dart';

import 'tabs/index.dart';
import 'tabs/find.dart';
import 'tabs/mine.dart';
import '../base/BaseTitleBar.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [IndexPagee(), FindPagee(), MinePagee()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new BaseViewBar(
          childView: new BaseTitleBar(
            "首页",
            actionsView: <Widget>[
              new RightView(
                title:"提交" ,
                rightClick: (){
                  print("点击了干嘛啊。。。哦");
                },
              ),
              new RightView(
                title:"保存" ,
                rightClick: (){
                  print("点击了干嘛哈哈哈哈啊。。。哦");
                },
              )
            ],
          ),
          preferredSize: Size.fromHeight(50.0)),

      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int indext) {
            setState(() {
              this._currentIndex = indext;
            });
          },
          iconSize: 30.0,
          fixedColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarms), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.free_breakfast), title: Text("发现")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), title: Text("我的"))
          ]),
    );
  }
}

class BaseBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(26, 155, 214, 1),
              Color.fromRGBO(54, 209, 193, 1)
            ],
          ),
        ),
      ),
      title: new Text("这是夜歌"),
      leading: Icon(Icons.arrow_back_ios),
      brightness: Brightness.dark,
      elevation: 2.0,
      centerTitle: true,
      actions: <Widget>[
        PopupMenuButton<String>(
          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                this.SelectView(Icons.message, '发起群聊', 'A'),
                this.SelectView(Icons.group_add, '添加服务', 'B'),
                this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
              ],
          onSelected: (String action) {
            // 点击选项的时候
            switch (action) {
              case 'A':
                break;
              case 'B':
                break;
              case 'C':
                break;
            }
          },
        )
      ],
    );
  }

  // 返回每个隐藏的菜单
  SelectView(IconData icon, String text, String id) {
    return new PopupMenuItem<String>(
        value: id,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(icon, color: Colors.blue),
            new Text(text),
          ],
        ));
  }
}

class BBar extends PreferredSize {}

class view extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(),
    );
  }

}