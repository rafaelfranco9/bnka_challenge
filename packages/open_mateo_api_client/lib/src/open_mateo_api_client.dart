import 'package:dio/dio.dart';
import 'package:open_mateo_api_client/src/resources/city/city.dart';

class OpenMateoApiClient {
  OpenMateoApiClient({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: 'https://geocoding-api.open-meteo.com/v1',
              ),
            );

  final Dio _dio;

  CityResource get cityResource => CityResource(dio: _dio);
}
