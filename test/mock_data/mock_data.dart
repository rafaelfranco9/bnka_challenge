import 'package:weather_repository/weather_repository.dart';

final kMockCityWeather = CityWeather(
  country: 'Argentina',
  city: 'Buenos Aires',
  latitude: -34.61,
  longitude: -58.38,
  currentWeather: WeatherData(
    time: DateTime(2021, 10, 10, 10, 10),
    windSpeed10m: 10,
    windSpeed10mUnit: 'km/h',
    temperature2m: 20,
    temperature2mUnit: '°C',
    relativeHumidity2m: 80,
    relativeHumidity2mUnit: '%',
  ),
  hourlyWeather: {
    DateTime(2021, 10, 10, 10, 10): WeatherData(
      time: DateTime(2021, 10, 10, 10, 10),
      windSpeed10m: 10,
      windSpeed10mUnit: 'km/h',
      temperature2m: 20,
      temperature2mUnit: '°C',
      relativeHumidity2m: 80,
      relativeHumidity2mUnit: '%',
    ),
  },
);

final kMockCityWeather2 = CityWeather(
  country: 'Venezuela',
  city: 'Caracas',
  latitude: -34.61,
  longitude: -58.38,
  currentWeather: WeatherData(
    time: DateTime(2021, 10, 10, 10, 10),
    windSpeed10m: 10,
    windSpeed10mUnit: 'km/h',
    temperature2m: 20,
    temperature2mUnit: '°C',
    relativeHumidity2m: 80,
    relativeHumidity2mUnit: '%',
  ),
  hourlyWeather: {
    DateTime(2021, 10, 10, 10, 10): WeatherData(
      time: DateTime(2021, 10, 10, 10, 10),
      windSpeed10m: 10,
      windSpeed10mUnit: 'km/h',
      temperature2m: 20,
      temperature2mUnit: '°C',
      relativeHumidity2m: 80,
      relativeHumidity2mUnit: '%',
    ),
  },
);
