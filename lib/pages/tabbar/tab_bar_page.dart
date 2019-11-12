import 'package:flutter/material.dart';
import './tab_item.dart';

class TabBarPage extends StatelessWidget {
  TabBarPage({Key key}) : super(key: key);

  final count = 3;

  List<Widget> _createTabItem() {
    var list = List<Widget>();
    for (var i = 0; i < count; i++) {
      list.add(TabItem(content: "我是第${i + 1}页的内容"));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: count,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Tab bar"),
          elevation: 0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_airport)),
              Tab(icon: Icon(Icons.directions_run)),
              Tab(icon: Icon(Icons.directions_boat)),
            ],
          ),
        ),
        body: TabBarView(
          children: _createTabItem(),
        ),
      ),
    );
  }
}
