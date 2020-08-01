import 'package:store/src/model/user.dart';
import 'package:test/test.dart';

void main() async {
  test('same reference', () async {
    var id = '1234';
    var oldUser = UserFactory.fromJson({
      '_id': id,
      'username': 'habib1',
    });
    var newUser = UserFactory.fromJson({
      '_id': id,
      'username': 'habib2',
    });

    expect(true, newUser.username == oldUser.username);
  });
}
