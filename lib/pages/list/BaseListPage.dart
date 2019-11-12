import 'package:flutter/material.dart';
import '../../mode/Post.dart';
import '../../widget/T.dart';

class BaseListPage extends StatelessWidget {
  const BaseListPage({Key key}) : super(key: key);

  Widget _listItemBuild(BuildContext context, int index) {
    var post = posts[index];
    return GestureDetector(
      onTap: () {
        T.showToast("标题:${post.title}");
      },
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Image.network(post.imageUrl),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.title, style: Theme.of(context).textTheme.title),
                  SizedBox(height: 8),
                  Text(post.author,
                      style: Theme.of(context).textTheme.subtitle),
                  SizedBox(height: 8),
                  Text(post.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("基础列表"),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuild,
      ),
    );
  }
}
