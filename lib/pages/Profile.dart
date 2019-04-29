import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeAgo;
import 'package:url_launcher/url_launcher.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/components/DarkCard.dart';

import 'package:flutterhub/models/User.dart';

class Profile extends StatelessWidget {
  final User user;
  Profile({Key key, this.user}) : super(key: key);

  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final timestamp = DateTime.parse(this.user.createdAt);
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
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 7.5,
                      ),
                      child: Text(
                        this.user.bio,
                        style: bioText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.home),
                        VerticalDivider(
                          width: 5,
                        ),
                        Text(this.user.location),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 7.5,
                      ),
                      child: Text(
                        "joined " + timeAgo.format(timestamp),
                        style: bioText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      onPressed: () {
                        launchURL(this.user.url);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.code,
                            size: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "View on GitHub",
                              style: boldSubText,
                            ),
                          )
                        ],
                      ),
                    ),
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
