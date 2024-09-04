import 'package:dio/dio.dart';
import 'package:open_mateo_api_client/src/resources/resources.dart';

class OpenMateoApiClient {
  OpenMateoApiClient({Dio? dio}) : _dio = dio;

  final Dio? _dio;

  CityResource get cityResource => CityResource(dio: _dio);

  WeatherResource get weatherResource => WeatherResource(dio: _dio);
}
