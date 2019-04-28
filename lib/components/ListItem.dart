import 'package:flutter/material.dart';

import 'package:flutterhub/models/Repo.dart';
import 'package:flutterhub/components/TextStyles.dart';

class ListItem extends StatelessWidget {
  final Repo repo;
  const ListItem({Key key, this.repo}) : super(key: key);

  Widget forkCircle() {
    if (!repo.isFork) {
      return Icon(
        Icons.beenhere,
        color: Colors.blueAccent,
      );
    } else {
      return Icon(
        Icons.beenhere,
        color: Colors.grey,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(64, 75, 96, .9),
        ),
        child: ListTile(
          isThreeLine: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          title: Column(
            children: <Widget>[
              Text(
                repo.name,
                maxLines: 2,
                //softWrap: true,
                textAlign: TextAlign.center,
                //overflow: TextOverflow.ellipsis,
                style: repoStyle,
              ),
              Text(
                repo.language,
                style: repoLang,
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    repo.stars.toString(),
                    style: boldSubText,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.play_for_work,
                    color: Colors.greenAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    repo.forks.toString(),
                    style: boldSubText,
                  ),
                ],
              ),
              forkCircle()
            ],
          ),
        ),
      ),
    );
  }
}
