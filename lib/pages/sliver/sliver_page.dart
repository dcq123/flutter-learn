import 'package:flutter/material.dart';
import '../../mode/Post.dart';
import '../../pages/list/BaseListPage.dart' show ItemWidget;

class SliverPage extends StatefulWidget {
  const SliverPage({Key key}) : super(key: key);

  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  var _currentIndex = 0;

  var pages = [
    SliverGridPage(),
    SliverListPage(),
    SliverAppBarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text("SliverGrid"),
            icon: Icon(Icons.spa),
          ),
          BottomNavigationBarItem(
            title: Text("SliverList"),
            icon: Icon(Icons.voicemail),
          ),
          BottomNavigationBarItem(
            title: Text("SliverAppBar"),
            icon: Icon(Icons.local_bar),
          ),
        ],
      ),
    );
  }
}

class SliverGridPage extends StatelessWidget {
  const SliverGridPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              title: Text("SliverAppBar"),
              // pinned: true,
              floating: true),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.6
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                childCount: posts.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListPage extends StatelessWidget {
  const SliverListPage({Key key}) : super(key: key);

  Widget buildItem(Post p) {
    return ItemWidget(
      post: p,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate:
              SliverChildListDelegate.fixed(posts.map(buildItem).toList()),
        )
      ],
    );
  }
}

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({Key key}) : super(key: key);

  Widget _buildItem(Post p) {
    return ItemWidget(
      post: p,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          expandedHeight: 180,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("FlexibleSpaceBar"),
            background: Image.network(
              "https://resources.ninghao.org/images/icecreamtruck.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverSafeArea(
          sliver: SliverList(
            delegate:
                SliverChildListDelegate.fixed(posts.map(_buildItem).toList()),
          ),
        )
      ],
    );
  }
}
