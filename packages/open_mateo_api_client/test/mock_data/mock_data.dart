import 'package:open_mateo_api_client/src/resources/resources.dart';

final kCitySearchResponse = {
  'results': [
    {
      'name': 'Buenos Aires',
      'country': 'Argentina',
      'latitude': -34.61,
      'longitude': -58.38,
    },
  ],
};

const kMockCity = City(
  name: 'Buenos Aires',
  country: 'Argentina',
  latitude: -34.61,
  longitude: -58.38,
);

final kWeatherResponse = {
  'latitude': -34.61,
  'longitude': -58.38,
  'timezone': 'America/Argentina/Buenos_Aires',
  'current': {
    'time': '2024-09-04T01:00',
    'temperature_2m': 20.0,
    'relative_humidity_2m': 50.0,
    'wind_speed_10m': 10.0,
  },
  'current_units': {
    'temperature_2m': '°C',
    'relative_humidity_2m': '%',
    'wind_speed_10m': 'km/h',
  },
  'hourly': {
    'time': ['2024-09-04T01:00', '2024-09-04T02:00', '2024-09-04T03:00'],
    'temperature_2m': [20.0, 21.0, 22.0],
    'relative_humidity_2m': [50.0, 51.0, 52.0],
    'wind_speed_10m': [10.0, 11.0, 12.0],
  },
  'hourly_units': {
    'temperature_2m': '°C',
    'relative_humidity_2m': '%',
    'wind_speed_10m': 'km/h',
  },
};

final kMockWeather = Weather(
    latitude: -34.61,
    longitude: -58.38,
    timezone: 'America/Argentina/Buenos_Aires',
    current: CurrentWeather(
      time: DateTime.parse('2024-09-04T01:00'),
      temperature2m: 20,
      relativeHumidity2m: 50,
      windSpeed10m: 10,
    ),
    hourly: HourlyWeather(
      time: [
        DateTime.parse('2024-09-04T01:00'),
        DateTime.parse('2024-09-04T02:00'),
        DateTime.parse('2024-09-04T03:00'),
      ],
      temperature2m: [20, 21, 22],
      relativeHumidity2m: [50, 51, 52],
      windSpeed10m: [10, 11, 12],
    ),
    currentUnits: const WeatherUnits(
      temperature2m: '°C',
      relativeHumidity2m: '%',
      windSpeed10m: 'km/h',
    ),
    hourlyUnits: const WeatherUnits(
      temperature2m: '°C',
      relativeHumidity2m: '%',
      windSpeed10m: 'km/h',
    ));
