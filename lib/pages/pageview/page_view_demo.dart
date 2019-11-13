import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView控件"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("水平视图"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              var args = {"title": "水平PageView", "direction": Axis.horizontal};
              Navigator.pushNamed(context, "pageview/static", arguments: args);
            },
          ),
          Divider(height: 1),
          ListTile(
            title: Text("垂直视图"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              var args = {"title": "垂直PageView", "direction": Axis.vertical};
              Navigator.pushNamed(context, "pageview/static", arguments: args);
            },
          ),
          Divider(height: 1),
          ListTile(
            title: Text("动态数据"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "pageview/dynamic");
            },
          ),
          Divider(height: 1),
        ],
      ),
    );
  }
}
