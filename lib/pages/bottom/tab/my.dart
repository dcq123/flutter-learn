import 'package:flutter/material.dart';

class MyFragment extends StatelessWidget {
  const MyFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person, size: 80, color: Colors.black26),
              SizedBox(
                height: 16,
              ),
              Text(
                "我的页面",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ]));
  }
} 