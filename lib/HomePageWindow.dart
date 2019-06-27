import 'package:flutter/material.dart';
import 'BaseTitilebar.dart';
import 'pages/Tabs.dart';
import 'package:flutterapp/MyPage.dart';

class HomePageWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '主页',
//       theme: new ThemeData(
//        primarySwatch: Colors.blue,
//        textSelectionColor: Colors.red
//    ),
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => new MyPage(title: 'page A'),
          '/b': (BuildContext context) => new MyPage(title: 'page B'),
          '/c': (BuildContext context) => new MyPage(title: 'page C'),
        },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Tabs();
  }
}


