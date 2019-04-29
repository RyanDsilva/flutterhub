import 'package:flutter/material.dart';

import 'package:flutterhub/components/ListItem.dart';
import 'package:flutterhub/models/Repo.dart';

class Repos extends StatelessWidget {
  final List<Repo> repos;
  const Repos({Key key, this.repos}) : super(key: key);

  Widget buildListItem(BuildContext context, int index) {
    return ListItem(
      repo: repos[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: true,
      itemBuilder: buildListItem,
      itemCount: repos.length,
    );
  }
}
