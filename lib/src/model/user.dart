import 'package:mobx/mobx.dart';

part 'user.g.dart';

class User = UserBase with _$User;

abstract class UserBase with Store {
  UserBase({
    this.id,
    this.username,
  });
  String id;
  @observable
  String username;

  factory UserBase.fromJson(Map<String, dynamic> json) => User(
        id: json['_id'],
        username: json['username'],
      );

  void copyWith(Map<String, dynamic> json) {
    username = json['username'];
  }
}
