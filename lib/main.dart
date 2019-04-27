import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutterhub/util/routes.dart';

void main() => runApp(FlutterHub());

class FlutterHub extends StatefulWidget {
  @override
  _FlutterHubState createState() => _FlutterHubState();
}

class _FlutterHubState extends State<FlutterHub> {
  final router = new Router();

  @override
  void initState() {
    super.initState();
    Routes.configureRoutes(router);
  }

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
      onGenerateRoute: router.generator,
    );
  }
}
