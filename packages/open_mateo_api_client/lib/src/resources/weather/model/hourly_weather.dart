import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_weather.freezed.dart';
part 'hourly_weather.g.dart';

@freezed
abstract class HourlyWeather with _$HourlyWeather {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HourlyWeather({
    required List<DateTime> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2m,
    @JsonKey(name: 'relative_humidity_2m')
    required List<int> relativeHumidity2m,
    @JsonKey(name: 'wind_speed_10m') required List<double> windSpeed10m,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}
