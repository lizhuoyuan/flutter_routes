import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  final arguments;

  const BPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('$arguments'),
      ),
      body: Container(
        child: Text('BPage'),
      ),
    );
  }
}
