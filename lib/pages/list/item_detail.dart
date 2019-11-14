import 'package:dcq_flutter/mode/Post.dart';
import 'package:flutter/material.dart';

/// 列表详情页
class ItemDetailPage extends StatelessWidget {
  ItemDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 路由中获取参数
    var post = ModalRoute.of(context).settings.arguments as Post;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                post.title,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              background: Image.network(post.imageUrl, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.title, style: Theme.of(context).textTheme.title),
                  Text(post.author, style: Theme.of(context).textTheme.subhead),
                  SizedBox(height: 10),
                  Text(post.description, style: TextStyle(fontSize: 14,height: 1.5)),
                  
                  SizedBox(height: 10),
                  Text(post.description, style: TextStyle(fontSize: 14,height: 1.5)),
                  
                  SizedBox(height: 10),
                  Text(post.description, style: TextStyle(fontSize: 14,height: 1.5)),
                  
                  SizedBox(height: 10),
                  Text(post.description, style: TextStyle(fontSize: 14,height: 1.5)),
                  
                  SizedBox(height: 10),
                  Text(post.description, style: TextStyle(fontSize: 14,height: 1.5)),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
