import 'package:flutter/material.dart';

class BaseWidgetPage extends StatelessWidget {
  const BaseWidgetPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础控件"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("普通文本", style: TextStyle(color: Colors.black)),
              SizedBox(height: 10),
              Container(
                  height: 100,
                  color: Colors.green,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(
                    "Container 中的文本",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  )),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
