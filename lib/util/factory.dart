import 'model.dart';

typedef Constructor<T extends Model> = T Function(Map<String, dynamic> json);
T modelFactory<T extends Model>({
  Map<String, T> instances,
  Map<String, dynamic> json,
  Constructor<T> constructor,
}) {
  var id = json['_id'];
  var storedObject = instances[id];
  if (storedObject == null) {
    var newObject = constructor(json);
    instances[id] = newObject;
    return newObject;
  } else {
    storedObject.copyWith(json);
    return storedObject;
  }
}
