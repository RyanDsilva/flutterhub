import 'package:flutter/material.dart';

import 'package:flutterhub/models/StatsModel.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/components/DarkCard.dart';

class Stats extends StatelessWidget {
  final StatsModel stats;
  const Stats({Key key, this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      primary: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new DarkCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.stats.repoCount.toString(),
                  style: repoLang,
                ),
                Text(
                  this.stats.followers.toString(),
                  style: repoLang,
                ),
                Text(
                  this.stats.following.toString(),
                  style: repoLang,
                ),
                Text(
                  this.stats.publicGists.toString(),
                  style: repoLang,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
