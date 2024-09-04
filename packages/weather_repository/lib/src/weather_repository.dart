import 'package:weather_repository/src/entities/city_weather.dart';

abstract class WeatherRepository {
  Future<CityWeather> fetchWeatherByCityName(String city);
}
