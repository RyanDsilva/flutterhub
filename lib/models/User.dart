class User {
  final String name;
  final String image;
  final String url;
  final String location;
  final String bio;
  final String createdAt;

  User(
      {this.name,
      this.image,
      this.url,
      this.location,
      this.bio,
      this.createdAt});

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      bio: json["bio"],
      image: json["avatar_url"],
      location: json["location"],
      url: json["html_url"],
      createdAt: json["created_at"],
    );
  }
}
