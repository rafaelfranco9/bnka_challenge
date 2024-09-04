import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_data.freezed.dart';

@freezed
abstract class WeatherData with _$WeatherData {
  const factory WeatherData({
    required DateTime time,
    required double windSpeed10m,
    required String windSpeed10mUnit,
    required double temperature2m,
    required String temperature2mUnit,
    required int relativeHumidity2m,
    required String relativeHumidity2mUnit,
  }) = _WeatherData;
}
