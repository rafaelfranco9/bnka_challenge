import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required DateTime time,
    @JsonKey(name: 'temperature_2m') required double temperature2m,
    @JsonKey(name: 'relative_humidity_2m') required int relativeHumidity2m,
    @JsonKey(name: 'wind_speed_10m') required double windSpeed10m,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
