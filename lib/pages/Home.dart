import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Text('Home Page'),
            MaterialButton(
              onPressed: () =>
                  Navigator.pushNamed(context, '/users/RyanDsilva'),
              child: Text("Go to User"),
            )
          ],
        ),
      ),
    );
  }
}
