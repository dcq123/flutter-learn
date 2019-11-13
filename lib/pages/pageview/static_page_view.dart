import 'package:dcq_flutter/pages/list/BaseListPage.dart';
import 'package:flutter/material.dart';

class StaticPageView extends StatelessWidget {
  StaticPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // 获取命名路由跳转传递的参数
    var args = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(args["title"]),
      ),
      body: PageView(
        scrollDirection: args["direction"],
        children: <Widget>[
          // BaseListWidget(),
          Container(
            color: Colors.blueGrey[900],
            child: Center(
                child: Text("第一页",
                    style: TextStyle(fontSize: 30, color: Colors.white))),
          ),
          Container(
            color: Colors.orange[900],
            child: Center(
                child: Text("第二页",
                    style: TextStyle(fontSize: 30, color: Colors.white))),
          ),
          Container(
            color: Colors.yellow[900],
            child: Center(
                child: Text("第三页",
                    style: TextStyle(fontSize: 30, color: Colors.white))),
          ),
          Container(
            color: Colors.red[900],
            child: Center(
                child: Text("第四页",
                    style: TextStyle(fontSize: 30, color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
