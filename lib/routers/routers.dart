import '../pages/base/BaseWidget.dart';
import '../main.dart' show MyHomePage;
import '../pages/list/BaseListPage.dart';
import '../pages/tabbar/tab_bar_page.dart';
import '../pages/bottom/tab_bar.dart';

final routers = {
  "home": (context) => MyHomePage(title: "主页"),
  "base/widget": (context) => BaseWidgetPage(),
  "list/base": (context) => BaseListPage(),
  "tab/index": (context) => TabBarPage(),
  "nav/bar": (context) => MyBottomNavigationBar()
};
