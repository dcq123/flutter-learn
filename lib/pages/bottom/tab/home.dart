import 'package:flutter/material.dart';
import '../../list/BaseListPage.dart' show BaseListWidget;

// home页面直接展示之前的基础列表页
class HomeFragment extends StatelessWidget {
  const HomeFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseListWidget();
  }
}
