import 'package:flutter/material.dart';

class HistoryFragment extends StatelessWidget {
  const HistoryFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.history, size: 80, color: Colors.black26),
              SizedBox(
                height: 16,
              ),
              Text(
                "历史页面",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ]));
  }
}
