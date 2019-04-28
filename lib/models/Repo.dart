class Repo {
  final String name;
  final String language;
  final int stars;
  final int forks;
  final bool isFork;

  Repo({this.name, this.language, this.stars, this.forks, this.isFork});

  factory Repo.fromJSON(Map<String, dynamic> json) {
    return Repo(
      name: json["name"],
      language: json["language"],
      stars: json["stargazers_count"],
      forks: json["forks"],
      isFork: json["fork"],
    );
  }
}
