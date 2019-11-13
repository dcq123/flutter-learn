import 'package:flutter/material.dart';
import '../../mode/Post.dart';

class DynamicPageView extends StatefulWidget {
  const DynamicPageView({Key key}) : super(key: key);

  @override
  _DynamicPageViewState createState() => _DynamicPageViewState();
}

class _DynamicPageViewState extends State<DynamicPageView> {
  Widget _itemBuilder(BuildContext context, int index) {
    final post = posts[index];
    return Stack(
      children: <Widget>[
        SizedBox.expand(
            child: Image.network(
          post.imageUrl,
          fit: BoxFit.cover,
        )),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            children: <Widget>[
              Text(post.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(post.author, style: TextStyle(fontSize: 14))
            ],
          ),
        )
      ],
    );
  }

  var _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态数据PageView"),
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: Center(
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: PageView.builder(
              controller: PageController(
                  initialPage: _currentIndex, viewportFraction: 1),
              itemCount: posts.length,
              itemBuilder: _itemBuilder,
            ),
          ),
        ),
      ),
    );
  }
}
