import 'package:flutter/material.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/components/DarkCard.dart';

import 'package:flutterhub/models/User.dart';

class Profile extends StatelessWidget {
  final User user;
  Profile({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(5),
      primary: true,
      child: new Column(
        children: <Widget>[
          new DarkCard(
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    margin: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(this.user.image),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this.user.name,
                      style: titleStyle,
                    ),
                    Text(this.user.bio),
                    Text(this.user.location),
                    Text(this.user.createdAt),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
