import 'package:flutter/material.dart';

import 'package:flutterhub/models/User.dart';

class Profile extends StatelessWidget {
  final User user;
  const Profile({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.user.name,
      ),
    );
  }
}
