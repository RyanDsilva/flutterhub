import 'package:flutter/material.dart';

import 'package:flutterhub/models/User.dart';
import 'package:flutterhub/models/Repo.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/pages/Profile.dart';
import 'package:flutterhub/pages/Repos.dart';
import 'package:flutterhub/pages/Followers.dart';

class Tabs extends StatefulWidget {
  final String username;

  const Tabs({Key key, this.username}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new AppBar(
          title: Text(
            "FlutterHub",
            style: titleStyle,
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.person),
              text: "Profile",
            ),
            Tab(
              icon: Icon(Icons.library_books),
              text: "Repos",
            ),
            Tab(
              icon: Icon(Icons.people),
              text: "Followers",
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Profile(
              user: new User(
                name: "Ryan Dsilva",
                image: "https://avatars2.githubusercontent.com/u/29952177?v=4",
                bio: "20 | Deep Learning and Full Stack Developer",
                location: "Mumbai, India",
                url: "/",
                createdAt: "27-2-2017",
              ),
            ),
            Repos(
              repos: [
                new Repo(
                  name: "flutterhub",
                  stars: 322,
                  forks: 34,
                  language: "Dart",
                  isFork: false,
                )
              ],
            ),
            Followers(
              followers: [
                new User(
                  name: "Anushka Paradkar",
                  image: "/",
                  bio: "20 | Big Data Expert",
                  location: "Mumbai, India",
                  url: "/",
                  createdAt: "27-7-2018",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
