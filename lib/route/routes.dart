import 'package:flutter_routes/page/b_page.dart';
import 'package:flutter_routes/page/c_page.dart';
import 'package:flutter_routes/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes/route/route_name.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    RouteNames.home: (_) => MyHomePage(),
    RouteNames.b: (_, {arguments}) => BPage(arguments: arguments),
    RouteNames.c: (_, {arguments}) => CPage(),
  };

  ///当通过Navigation.of(context).pushNamed跳转路由时，在routes查找不到时，会调用该方法
  static Route onGenerateRoute(RouteSettings settings) {
    print('onGenerateRoute : $settings');
    String routeName = settings.name;

    final Function pageContentBuilder = routes[routeName];

    return MaterialPageRoute(builder: (BuildContext context) {
      if (pageContentBuilder == null) {
        return Scaffold(
          appBar: AppBar(
            title: Text("404 not found ! !"),
          ),
          body: Container(
            child: Text("页面不存在"),
          ),
        );
      }

      if (settings.arguments == null) {
        return pageContentBuilder(context);
      }
      return pageContentBuilder(context, arguments: settings.arguments);
    });
  }
}
