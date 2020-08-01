import 'package:mobx/mobx.dart';
import 'package:store/util/factory.dart';
import 'package:store/util/model.dart';

part 'user.g.dart';
part 'user_factory.dart';

class User = UserBase with _$User;

abstract class UserBase with Store implements Model {
  UserBase._({
    this.id,
    this.username,
  });
  String id;
  @observable
  String username;

  static UserBase _fromJson(Map<String, dynamic> json) => User._(
        id: json['_id'],
        username: json['username'],
      );

  @override
  void copyWith(Map<String, dynamic> json) {
    username = json['username'];
  }
}
