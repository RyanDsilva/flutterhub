import 'package:flutter/material.dart';

import 'package:flutterhub/models/User.dart';

class Followers extends StatelessWidget {
  final List<User> followers;
  const Followers({Key key, this.followers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.followers[0].name,
      ),
    );
  }
}
