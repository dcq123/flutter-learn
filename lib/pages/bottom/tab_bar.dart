import 'package:dcq_flutter/pages/bottom/tab/category.dart';
import 'package:dcq_flutter/pages/bottom/tab/history.dart';
import 'package:dcq_flutter/pages/bottom/tab/home.dart';
import 'package:dcq_flutter/pages/bottom/tab/my.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  var fragmentList = [
    HomeFragment(),
    CategoryFragment(),
    HistoryFragment(),
    MyFragment()
  ];

// 点击Tab的事件处理
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
      ),
      body: fragmentList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("历史")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的")),
        ],
      ),
    );
  }
}
