import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
abstract class City with _$City {
  const factory City({
    required String name,
    required String country,
    required double latitude,
    required double longitude,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
