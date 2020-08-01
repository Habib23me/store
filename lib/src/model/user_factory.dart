part of 'user.dart';

class UserFactory {
  //TODO: This may cause memory leak since it will never be disposed
  static final Map<String, User> _instances = {};
  static User fromJson(Map<String, dynamic> json) {
    var id = json['_id'];
    var storedObject = _instances[id];
    if (storedObject == null) {
      var newObject = User._fromJson(json);
      _instances[id] = newObject;
      return newObject;
    } else {
      storedObject.copyWith(json);
      return storedObject;
    }
  }
}
