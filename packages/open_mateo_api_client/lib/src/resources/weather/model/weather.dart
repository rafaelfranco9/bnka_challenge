import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_mateo_api_client/src/resources/weather/model/current_weather.dart';
import 'package:open_mateo_api_client/src/resources/weather/model/hourly_weather.dart';
import 'package:open_mateo_api_client/src/resources/weather/model/weather_units.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Weather({
    required double latitude,
    required double longitude,
    required String timezone,
    required CurrentWeather current,
    required HourlyWeather hourly,
    required WeatherUnits currentUnits,
    required WeatherUnits hourlyUnits,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
