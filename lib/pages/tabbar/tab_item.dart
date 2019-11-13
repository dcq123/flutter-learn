import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final content;

  const TabItem({Key key, this.content = "default content"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.directions_boat,
          size: 80,
          color: Colors.black12,
        ),
        SizedBox(height: 16,),
        Text(
          content,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
      ],
    );
  }
}
