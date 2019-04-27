import 'package:flutter/material.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/components/DarkCard.dart';

import 'package:flutterhub/models/User.dart';

class Profile extends StatelessWidget {
  final User user;
  const Profile({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(5),
      primary: true,
      child: new Column(
        children: <Widget>[
          new DarkCard(
            height: 100,
            child: Column(
              children: <Widget>[
                Image.network(
                  this.user.image,
                  width: 100,
                ),
              ],
            ),
          ),
          new DarkCard(
            child: Column(
              children: <Widget>[
                Text(
                  this.user.name,
                  style: titleStyle,
                ),
              ],
            ),
          ),
          new DarkCard(
            child: Column(
              children: <Widget>[
                Text(
                  this.user.bio,
                ),
              ],
            ),
          ),
          new DarkCard(
            child: Column(
              children: <Widget>[
                Text(
                  this.user.location,
                ),
              ],
            ),
          ),
          new DarkCard(
            child: Column(
              children: <Widget>[
                Text(
                  this.user.createdAt,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
