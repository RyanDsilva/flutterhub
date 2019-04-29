import 'package:flutterhub/models/Repo.dart';

class StatsModel {
  final int repoCount;
  final int followers;
  final int following;
  final int publicGists;
  Future<List<Repo>> repos;

  StatsModel({
    this.repoCount,
    this.followers,
    this.following,
    this.publicGists,
  });

  setRepos(r) {
    this.repos = r;
  }

  factory StatsModel.fromJSON(Map<String, dynamic> json) {
    return StatsModel(
      repoCount: json["public_repos"],
      followers: json["followers"],
      following: json["following"],
      publicGists: json["public_gists"],
    );
  }
}
