import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutterhub/models/StatsModel.dart';

import 'package:flutterhub/components/TextStyles.dart';

class Stats extends StatelessWidget {
  final StatsModel stats;
  const Stats({Key key, this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(2, 3),
      const StaggeredTile.count(2, 3),
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(4, 2),
    ];

    return new Padding(
      padding: const EdgeInsets.all(5.0),
      child: new StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _staggeredTiles,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.teal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.people),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    stats.followers.toString() + "\nFollowers",
                    style: boldSubText,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.redAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.library_books),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    stats.repoCount.toString() + "\nPublic\nRepos",
                    style: boldSubText,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.indigoAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person_pin),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    stats.following.toString() + "\nFollowing",
                    style: boldSubText,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.textsms),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    stats.publicGists.toString() + "\nGists",
                    style: boldSubText,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.teal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.people),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    stats.followers.toString(),
                    style: boldSubText,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
        mainAxisSpacing: 7.5,
        crossAxisSpacing: 7.5,
        padding: const EdgeInsets.all(7.5),
      ),
    );
  }
}
