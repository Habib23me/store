import 'package:mobx/mobx.dart';
import 'package:store/store.dart';
import 'package:test/test.dart';

void main() async {
  test('same reference', () async {
    var emitedValues = <String>[];
    var id = '1234';
    var user = UserFactory.fromJson({
      '_id': id,
      'username': 'habib1',
    });

    final dispose = autorun((_) {
      emitedValues.add(user.username);
    });

    await UserFactory.fromJson({
      '_id': id,
      'username': 'habib2',
    });

    dispose();
    expect(['habib1', 'habib2'], emitedValues);
  });
}
