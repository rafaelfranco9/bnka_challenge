import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:open_mateo_api_client/src/resources/resources.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../mock_data/mock_data.dart';

void main() {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);
  const path = '/forecast';

  group('WeatherResource', () {
    late WeatherResource weatherResource;

    setUp(() {
      weatherResource = WeatherResource(dio: dio);
    });

    test('fetchWeatherByCoordinates', () async {
      dioAdapter.onGet(
        path,
        (server) => server.reply(200, kWeatherResponse),
        queryParameters: {
          'latitude': kMockWeather.latitude,
          'longitude': kMockWeather.longitude,
          'current': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'hourly': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'forecast_days': '3',
        },
      );

      final weather = await weatherResource.fetchWeatherByCoordinates(
        latitude: kMockWeather.latitude,
        longitude: kMockWeather.longitude,
      );

      expect(weather, kMockWeather);
    });

    test(
        'fetchWeatherByCoordinates throw Error if internal server error happened',
        () async {
      dioAdapter.onGet(
        path,
        (server) => server.reply(500, 'Internal Server Error'),
        queryParameters: {
          'latitude': kMockWeather.latitude,
          'longitude': kMockWeather.longitude,
          'current': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'hourly': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'forecast_days': '3',
        },
      );

      expect(
        () async => weatherResource.fetchWeatherByCoordinates(
          latitude: kMockWeather.latitude,
          longitude: kMockWeather.longitude,
        ),
        throwsException,
      );
    });

    test('fetchWeatherByCoordinates throw Error if null is returned', () async {
      dioAdapter.onGet(
        path,
        (server) => server.reply(200, null),
        queryParameters: {
          'latitude': kMockWeather.latitude,
          'longitude': kMockWeather.longitude,
          'current': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'hourly': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'forecast_days': '3',
        },
      );

      expect(
        () async => weatherResource.fetchWeatherByCoordinates(
          latitude: kMockWeather.latitude,
          longitude: kMockWeather.longitude,
        ),
        throwsException,
      );
    });
  });
}
