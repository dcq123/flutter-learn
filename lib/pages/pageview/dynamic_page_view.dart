import 'package:flutter/material.dart';
import '../../mode/Post.dart';

class DynamicPageView extends StatefulWidget {
  const DynamicPageView({Key key}) : super(key: key);

  @override
  _DynamicPageViewState createState() => _DynamicPageViewState();
}

class _DynamicPageViewState extends State<DynamicPageView> {
  var _currentIndex = 0;

  // 设置每页内容
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

  void _pageChanged(int index) {
    debugPrint("index=$index");
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3 / 2,
              child: PageView.builder(
                controller: PageController(
                    initialPage: _currentIndex, viewportFraction: 1),
                itemCount: posts.length,
                itemBuilder: _itemBuilder,
                onPageChanged: _pageChanged,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                posts[_currentIndex].imageUrl,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
