import 'package:flutter/material.dart';

import 'package:flutterhub/components/TextStyles.dart';
import 'package:flutterhub/models/Repo.dart';

class Repos extends StatelessWidget {
  final List<Repo> repos;
  const Repos({Key key, this.repos}) : super(key: key);

  List<Widget> createRepoView() {
    List<Widget> repositories = new List<Widget>();
    for (var r in this.repos) {
      var l = ListTile(
        title: Text(
          r.name,
          style: titleStyle,
        ),
        isThreeLine: true,
        contentPadding: EdgeInsets.all(5),
        subtitle: Text(r.language),
      );
      repositories.add(l);
    }
    return repositories;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(5),
      primary: true,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: createRepoView(),
      ),
    );
  }
}
