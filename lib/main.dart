import 'package:flutter/material.dart';

void main() => runApp(FlutterHub());

class FlutterHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        accentColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterHub"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("FlutterHub"),
        ),
      ),
    );
  }
}
