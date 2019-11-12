import 'package:flutter/material.dart';
import './routers/routers.dart';
import './widget/T.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routers,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "menu",
          onPressed: () {
            T.showToast("菜单");
          },
        ),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              T.showToast("search");
            },
          )
        ],
      ),
      body: HomeListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => T.showToast("我是浮动按钮"),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(Icons.local_airport),
            title: Text("基础控件"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "base/widget");
            }),
        Divider(height: 1),
        ListTile(
            leading: Icon(Icons.line_style),
            title: Text("基础列表"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "list/base");
            }),
        Divider(height: 1),
        ListTile(
            leading: Icon(Icons.tab),
            title: Text("TabBar组件"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "tab/index");
            }),
        Divider(height: 1)
      ],
    );
  }
}
