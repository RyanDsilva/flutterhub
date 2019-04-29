import 'package:flutter/material.dart';

import 'package:flutterhub/models/User.dart';
import 'package:flutterhub/models/Repo.dart';
import 'package:flutterhub/models/StatsModel.dart';

import 'package:flutterhub/util/network.dart';
import 'package:flutterhub/util/url.dart';
import 'package:flutterhub/util/GitHub.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/pages/Profile.dart';
import 'package:flutterhub/pages/Repos.dart';
import 'package:flutterhub/pages/Stats.dart';

class Tabs extends StatefulWidget {
  final String username;

  const Tabs({Key key, this.username}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  Url mainUrl = new Url();
  Network http = new Network();

  @override
  void initState() {
    super.initState();
    mainUrl.setUsername(widget.username);
  }

  Future<User> getUser() async {
    final res = await http.get(this.mainUrl.getURL() +
        '?client_id=' +
        clientID +
        '&client_secret=' +
        clientSecret);
    return User.fromJSON(res);
  }

  Future<List<Repo>> getRepos() async {
    List<Repo> repos = new List<Repo>();
    final res = await http.get(this.mainUrl.getReposURL() +
        '&client_id=' +
        clientID +
        '&client_secret=' +
        clientSecret);
    for (var r in res) {
      repos.add(Repo.fromJSON(r));
    }
    return repos;
  }

  Future<StatsModel> getStats() async {
    final res = await http.get(this.mainUrl.getURL() +
        '?client_id=' +
        clientID +
        '&client_secret=' +
        clientSecret);
    StatsModel s = new StatsModel.fromJSON(res);
    Future<List<Repo>> repos = this.getRepos();
    s.setRepos(repos);
    return s;
  }

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
              icon: Icon(Icons.graphic_eq),
              text: "Stats",
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            FutureBuilder<User>(
              future: getUser(),
              builder: (context, res) {
                if (res.hasData) {
                  return new Profile(
                    user: res.data,
                  );
                }
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                  ),
                );
              },
            ),
            FutureBuilder<List<Repo>>(
              future: getRepos(),
              builder: (context, res) {
                if (res.hasData) {
                  return new Repos(
                    repos: res.data,
                  );
                }
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                  ),
                );
              },
            ),
            FutureBuilder<StatsModel>(
              future: getStats(),
              builder: (context, res) {
                if (res.hasData) {
                  return new Stats(
                    stats: res.data,
                  );
                }
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
