import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_units.freezed.dart';
part 'weather_units.g.dart';

@freezed
abstract class WeatherUnits with _$WeatherUnits {
  const factory WeatherUnits({
    @JsonKey(name: 'temperature_2m') required String temperature2m,
    @JsonKey(name: 'relative_humidity_2m') required String relativeHumidity2m,
    @JsonKey(name: 'wind_speed_10m') required String windSpeed10m,
  }) = _WeatherUnits;

  factory WeatherUnits.fromJson(Map<String, dynamic> json) =>
      _$WeatherUnitsFromJson(json);
}
