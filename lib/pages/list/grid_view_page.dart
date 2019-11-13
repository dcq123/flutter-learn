import 'package:dcq_flutter/pages/list/BaseListPage.dart';
import 'package:flutter/material.dart';
import '../../mode/Post.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key key}) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return ItemWidget(post: posts[index]);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    var result = (itemWidth / itemHeight);
    debugPrint("value=$result");

    return Scaffold(
      appBar: AppBar(
        title: Text("GrideView"),
      ),
      body: GridView.builder(
        itemCount: posts.length,
        itemBuilder: _itemBuilder,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6,
            childAspectRatio: 0.6 //设置item的宽高比，不设置的话item的宽高会一致，有时会导致显示问题
            ),
      ),
    );
  }
}
