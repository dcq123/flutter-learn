import 'package:flutter/material.dart';
import '../../mode/Post.dart';
import '../../widget/T.dart';

class BaseListPage extends StatelessWidget {
  const BaseListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("基础列表"),
      ),
      body: BaseListWidget(),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final Post post;

  ItemWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        T.showToast("标题:${post.title}");
      },
      child: Container(
        height: 300,
        padding: EdgeInsets.only(left: 8,right: 8),
        child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                      width: double.infinity,
                      child: Image.network(post.imageUrl, fit: BoxFit.cover))),
              Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(post.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.title),
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
      ),
    );
  }
}

class BaseListWidget extends StatelessWidget {
  const BaseListWidget({Key key}) : super(key: key);

  Widget _listItemBuild(BuildContext context, int index) {
    return ItemWidget(
      post: posts[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuild,
    );
  }
}
