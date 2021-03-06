import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';



@freezed
class Location with _$Location {
  // final String city;
  // final String? zipcode;

  factory Location({
    @Default('Helena') String city,
    String? zipcode,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
