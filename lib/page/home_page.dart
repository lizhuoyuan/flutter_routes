import 'package:flutter/material.dart';
import 'package:flutter_routes/route/route_name.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title = 'title'}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('go to A'),
              onPressed: () {
                Navigator.of(context).pushNamed('a');
              },
            ),
            RaisedButton(
              child: Text('go to b'),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteNames.b, arguments: 'b的标题');
              },
            ),
            RaisedButton(
              child: Text('go to c'),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteNames.c);
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
