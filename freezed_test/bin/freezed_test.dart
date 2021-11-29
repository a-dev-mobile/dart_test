import 'model_1/user.dart';

void main(List<String> arguments) {
  User user1 = User(name: 'asd', age: 123);
  User user2 = User(name: "asd", age: 123);

  // true
  print(user2 == user1);

  // change user 2
  User user3 = user2.copyWith(age: 3);

  // equally
  print(user3.toString());
  print(user3);

  // in json _>_ {name: asd, age: 123}
  final json = user1.toJson();
  print('user 1 to json $json');

  // from json _>_ User(name: asd, age: 123)
  User userFromJson = User.fromJson(json);
  print('user 1 from json $userFromJson');

  // custom method from model

  print(user3.infoUser());
}
