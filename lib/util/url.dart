class Url {
  final String api = "https://api.github.com/users/";
  final String username;

  Url({this.username});

  String getURL() {
    return api + username;
  }

  String getGistsURL() {
    return getURL() + "/gists";
  }

  String getReposURL() {
    return getURL() + "/repos";
  }

  String getFollowersURL() {
    return getURL() + "/follwers";
  }

  String getFollowingURL() {
    return getURL() + "/following";
  }
}
