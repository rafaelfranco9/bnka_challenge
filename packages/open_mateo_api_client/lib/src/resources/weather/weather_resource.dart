import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:open_mateo_api_client/src/resources/weather/model/weather.dart';

class WeatherResource {
  WeatherResource({Dio? dio})
      : _dio =
            dio ?? Dio(BaseOptions(baseUrl: 'https://api.open-meteo.com/v1'));

  final Dio _dio;
  static const _path = '/forecast';

  Future<Weather?> fetchWeatherByCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        queryParameters: {
          'latitude': latitude,
          'longitude': longitude,
          'current': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
          'hourly': 'temperature_2m,relative_humidity_2m,wind_speed_10m',
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        return Weather.fromJson(response.data!);
      }
    } catch (e) {
      log(e.toString());
    }

    return null;
  }
}
