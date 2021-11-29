import 'package:freezed_annotation/freezed_annotation.dart';


import 'location.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  @JsonSerializable(explicitToJson: true)
  const factory User({
    required String name,
    int? age,
    required List<Location>locations,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String infoUser() {
    return 'custom method ===  name $name age $age';
  }
}
