part 'user_factory.dart';

class User {
  User._({
    this.id,
    this.username,
  });
  String id;
  String username;

  static User _fromJson(Map<String, dynamic> json) => User._(
        id: json['_id'],
        username: json['username'],
      );

  void copyWith(Map<String, dynamic> json) {
    username = json['username'];
  }
}
