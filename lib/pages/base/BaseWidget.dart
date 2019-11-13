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
        child: ListView(
          children: <Widget>[
            Text("普通文本", style: TextStyle(color: Colors.black)),
            SizedBox(height: 16),
            MyRichText(),
            SizedBox(height: 16),
            MyContainer(),
            SizedBox(height: 16),
            MyStackWidget(),
            SizedBox(height: 16),
            MyAspectRatio()
          ],
        ),
      ),
    );
  }
}

class MyRichText extends StatelessWidget {
  const MyRichText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "dcq",
          style: TextStyle(
              fontSize: 30, color: Colors.red, fontStyle: FontStyle.italic),
          children: [
            TextSpan(
                text: ".com",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent)),
            TextSpan(
                text: "这是我的网站地址",
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Colors.black54,
                    textBaseline: TextBaseline.alphabetic))
          ]),
    );
  }
}

//  使用Wrap包裹组件，可以实现自动换行的效果
class MyContainer extends StatelessWidget {
  const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 8.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          IconBadge(),
          IconBadge(icon: Icons.directions_run, bgColor: Colors.orange),
          IconBadge(icon: Icons.directions_subway, bgColor: Colors.red),
          IconBadge(icon: Icons.directions_walk, bgColor: Colors.green),
          IconBadge(icon: Icons.directions_car, bgColor: Colors.pink),
          IconBadge(icon: Icons.directions_railway, bgColor: Colors.blue),
          IconBadge(icon: Icons.fast_rewind, bgColor: Colors.orange),
        ],
      ),
    );
  }
}

// 自定义的Icon图标
class IconBadge extends StatelessWidget {
  final Color bgColor;
  final IconData icon;

  IconBadge({Key key, this.icon = Icons.person, this.bgColor = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: this.bgColor),
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
    );
  }
}

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(right: 20, top: 20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.brightness_2, size: 64, color: Colors.orange[200]),
        ),
        Positioned(
          top: 80,
          right: 120,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 26),
        ),
        Positioned(
          top: 40,
          left: 30,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 22),
        ),
        Positioned(
          top: 90,
          left: 70,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 26),
        ),
        Positioned(
          top: 140,
          left: 160,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
        Positioned(
          top: 140,
          right: 60,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
        Positioned(
          bottom: 140,
          left: 20,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
        Positioned(
          bottom: 80,
          left: 50,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
        Positioned(
          bottom: 30,
          left: 120,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
        Positioned(
          bottom: 30,
          right: 70,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
        Positioned(
          bottom: 70,
          right: 160,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 24),
        ),
      ],
    );
  }
}

// 宽高比控件
class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://resources.ninghao.org/images/undo.jpg',
            fit: BoxFit.cover,
          )),
    );
  }
}
