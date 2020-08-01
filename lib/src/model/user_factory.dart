part of 'user.dart';

class UserFactory {
  //TODO: This may cause memory leak since it will never be disposed
  static final Map<String, User> _instances = {};
  static User fromJson(Map<String, dynamic> json) => modelFactory<UserBase>(
        json: json,
        instances: _instances,
        constructor: UserBase._fromJson,
      );
}
