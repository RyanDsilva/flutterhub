import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutterhub/pages/Home.dart';
import 'package:flutterhub/pages/Tabs.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return new Home();
});

var userHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String username = params["username"][0];
  return new Tabs(username: username);
});
