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
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              T.showToast("search");
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("DCQ", style: TextStyle(fontSize: 20)),
              accountEmail: Text(
                "qing_soft@sina.cn",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://resources.ninghao.org/images/dragon.jpg"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text("我的钱包"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.settings_overscan),
              title: Text("我的订单"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.iso),
              title: Text("优惠券"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.traffic),
              title: Text("行程记录"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.face),
              title: Text("个人中心"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(height: 1),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: IconButton(
                          icon: Icon(Icons.settings,
                              size: 28, color: Colors.black54),
                          onPressed: () {
                            T.showToast("设置中心");
                            Navigator.pop(context);
                          })),
                  Expanded(
                      child: IconButton(
                          icon: Icon(Icons.help_outline,
                              size: 28, color: Colors.black54),
                          onPressed: () {
                            T.showToast("帮助中心");
                            Navigator.pop(context);
                          }))
                ],
              ),
            )
          ],
        ),
      ),
      body: HomeListView(),
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
