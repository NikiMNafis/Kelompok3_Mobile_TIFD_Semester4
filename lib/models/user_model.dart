class UserModel {
  late int id;
  late String name;
  late String email;
  late String username;
  late String profilePhotoUrl;
  late String token;

  UserModel(
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhotoUrl,
    this.token
  );

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> tojson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}
