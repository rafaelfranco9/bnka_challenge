import 'package:open_mateo_api_client/open_mateo_api_client.dart';
import 'package:weather_repository/src/entities/city_weather.dart';
import 'package:weather_repository/src/exceptions/exceptions.dart';
import 'package:weather_repository/src/mappers/open_mateo_mappers.dart';
import 'package:weather_repository/src/weather_repository.dart';

class WeatherOpenMateoRepository implements WeatherRepository {
  WeatherOpenMateoRepository({OpenMateoApiClient? openMateoApiClient})
      : _openMateoApiClient = openMateoApiClient ?? OpenMateoApiClient();

  final OpenMateoApiClient _openMateoApiClient;

  @override
  Future<CityWeather> fetchWeatherByCityName(String cityName) async {
    try {
      final cityData = await _openMateoApiClient.cityResource.fetchCityByName(
        cityName,
      );

      final weatherData =
          await _openMateoApiClient.weatherResource.fetchWeatherByCoordinates(
        latitude: cityData.latitude,
        longitude: cityData.longitude,
      );

      return OpenMateoWeatherMapper.toEntity(
        weather: weatherData,
        city: cityData,
      );
    } catch (e, s) {
      throw FetchWeatherByCityNameFailure(e, s);
    }
  }
}
