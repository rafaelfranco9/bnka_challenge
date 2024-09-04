import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_repository/src/entities/weather_data.dart';

part 'city_weather.freezed.dart';

@freezed
abstract class CityWeather with _$CityWeather {
  const factory CityWeather({
    required String country,
    required String city,
    required double latitude,
    required double longitude,
    required WeatherData currentWeather,
    required Map<DateTime, WeatherData> hourlyWeather,
  }) = _CityWeather;
}
