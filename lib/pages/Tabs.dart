import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final String username;

  const Tabs({Key key, this.username}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("FlutterHub"),
        centerTitle: true,
      ),
      body: new Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(widget.username),
          ],
        ),
      ),
    );
  }
}
