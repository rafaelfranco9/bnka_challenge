import 'package:collection/collection.dart';
import 'package:open_mateo_api_client/open_mateo_api_client.dart' as openMateo;
import 'package:weather_repository/src/entities/city_weather.dart';
import 'package:weather_repository/src/entities/weather_data.dart';

abstract class OpenMateoWeatherMapper {
  static CityWeather toEntity({
    required openMateo.Weather weather,
    required openMateo.City city,
  }) {
    return CityWeather(
      country: city.country,
      city: city.name,
      latitude: city.latitude,
      longitude: city.longitude,
      currentWeather: WeatherData(
        time: weather.current.time,
        windSpeed10m: weather.current.windSpeed10m,
        windSpeed10mUnit: weather.currentUnits.windSpeed10m,
        relativeHumidity2m: weather.current.relativeHumidity2m,
        relativeHumidity2mUnit: weather.currentUnits.relativeHumidity2m,
        temperature2m: weather.current.temperature2m,
        temperature2mUnit: weather.currentUnits.temperature2m,
      ),
      hourlyWeather: weather.hourly.time.foldIndexed({}, (index, prev, time) {
        final temperature2m = weather.hourly.temperature2m[index];
        final relativeHumidity2m = weather.hourly.relativeHumidity2m[index];
        final windSpeed10m = weather.hourly.windSpeed10m[index];
        final weatherData = WeatherData(
          time: time,
          temperature2m: temperature2m,
          temperature2mUnit: weather.hourlyUnits.temperature2m,
          relativeHumidity2m: relativeHumidity2m,
          relativeHumidity2mUnit: weather.hourlyUnits.relativeHumidity2m,
          windSpeed10m: windSpeed10m,
          windSpeed10mUnit: weather.hourlyUnits.windSpeed10m,
        );

        return {...prev, time: weatherData};
      }),
    );
  }
}
