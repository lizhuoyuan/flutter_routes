import 'package:flutter/material.dart';
import 'package:flutter_routes/route/route_name.dart';
import 'package:flutter_routes/route/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RouteNames.home,
      //routes: routes,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
