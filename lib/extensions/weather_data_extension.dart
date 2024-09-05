import 'package:weather_repository/weather_repository.dart';

extension WeatherDataExtension on WeatherData {
  String get temperature => '$temperature2m$temperature2mUnit';
  String get windSpeed => '$windSpeed10m$windSpeed10mUnit';
  String get humidity => '$relativeHumidity2m$relativeHumidity2mUnit';
}
