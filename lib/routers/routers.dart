import 'package:dcq_flutter/pages/list/grid_view_page.dart';

import '../pages/base/BaseWidget.dart';
import '../main.dart' show MyHomePage;
import '../pages/list/BaseListPage.dart';
import '../pages/tabbar/tab_bar_page.dart';
import '../pages/bottom/tab_bar.dart';
import '../pages/pageview/page_view_demo.dart';
import '../pages/pageview/static_page_view.dart';
import '../pages/pageview/dynamic_page_view.dart';

final routers = {
  "home": (context) => MyHomePage(title: "主页"),
  "base/widget": (context) => BaseWidgetPage(),
  "list/base": (context) => BaseListPage(),
  "list/grid": (context) => GridViewPage(),
  "tab/index": (context) => TabBarPage(),
  "nav/bar": (context) => MyBottomNavigationBar(),
  "pageview/index": (context) => PageViewDemo(),
  "pageview/static": (context) => StaticPageView(),
  "pageview/dynamic": (context) => DynamicPageView(),
};
