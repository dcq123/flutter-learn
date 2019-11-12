import '../pages/base/BaseWidget.dart';
import '../main.dart' show MyHomePage;
import '../pages/list/BaseListPage.dart';

final routers = {
  "home": (context) => MyHomePage(title: "主页"),
  "base/widget": (context) => BaseWidgetPage(),
  "list/base": (context) => BaseListPage()
};
