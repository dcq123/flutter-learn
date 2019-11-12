import '../pages/base/BaseWidget.dart';
import '../main.dart' show MyHomePage;

final routers = {
  "/": (context) => MyHomePage(title: "主页"),
  "base/widget": (context) => BaseWidgetPage()
};


