import 'package:flutter/material.dart';

class BaseTitleBar extends StatelessWidget {
  String title;
  VoidCallback leftClick;
  IconData leftIcon = Icons.arrow_back_ios;
  final List<Widget> actionsView;
  final parentContext;

  BaseTitleBar(this.title,
      {this.leftIcon,
      this.leftClick,
      this.actionsView,
      @required this.parentContext});

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      flexibleSpace: Container(
        /// 实现渐变色的效果
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(26, 155, 214, 1),
              Color.fromRGBO(54, 209, 193, 1)
            ],
          ),
        ),
      ),
      title: new Text(this.title),
      leading: new IconButton(
        /// 左边图标，视情况而定，自己穿参数
        icon: Icon(this.leftIcon),
        color: Colors.white,
//        onPressed: this.leftClick,
        onPressed: _onClick,
      ),
      brightness: Brightness.dark,
      elevation: 2.0,
      centerTitle: true,
      actions: this.actionsView,
    );
  }

  void _onClick() {
    if (this.parentContext == null) {
//      new GestureDetector(
//        onTap: this.leftClick,
//      );
       this.leftClick;
    } else {
      Navigator.pop(parentContext);
    }
  }
}

/// 右边的 布局，以及点击事件
class RightView extends StatelessWidget {
  String title;
  VoidCallback rightClick;

  RightView({this.title, this.rightClick});

  @override
  Widget build(BuildContext context) {
    var containView;
    if (title != null) {
      containView = new Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: GestureDetector(
          child: Text(
            this.title,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          onTap: this.rightClick,
        ),
      );
    } else {
      containView = Text("");
    }
    return containView;
  }
}

class BaseViewBar extends PreferredSize {
  Widget childView;
  @override
  final Size preferredSize;

  BaseViewBar({this.preferredSize, this.childView});

  @override
  Widget build(BuildContext context) {
    Widget current = childView;
    if (childView == null) {
      current = LimitedBox(
        maxWidth: 0.0,
        maxHeight: 0.0,
        child: ConstrainedBox(constraints: const BoxConstraints.expand()),
      );
    }
    return current;
  }
}
