import 'package:flutter/material.dart';
import './routers/routers.dart';
import './widget/T.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: "/",
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
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.local_airport),
              title: Text("基础控件"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                T.showToast("基础控件");
                Navigator.pushNamed(context, "base/widget");
              }),
          Divider(
            height: 1,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          T.showToast("我是浮动按钮")
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
