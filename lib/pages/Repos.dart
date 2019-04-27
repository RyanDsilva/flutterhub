import 'package:flutter/material.dart';

import 'package:flutterhub/models/Repo.dart';

class Repos extends StatelessWidget {
  final List<Repo> repos;
  const Repos({Key key, this.repos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.repos[0].name,
      ),
    );
  }
}
