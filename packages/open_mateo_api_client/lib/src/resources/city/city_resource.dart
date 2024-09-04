import 'package:dio/dio.dart';

import 'city.dart';

class CityResource {
  CityResource({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(baseUrl: 'https://geocoding-api.open-meteo.com/v1'),
            );

  final Dio _dio;
  static const _path = '/search';

  Future<City> fetchCityByName(String name) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        queryParameters: {
          'name': name,
          'count': 1,
          'language': 'en',
          'format': 'json',
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        final results = response.data!['results'] as List;
        final data = results.cast<Map<String, dynamic>>();
        return City.fromJson(data.first);
      } else {
        throw Exception('Failed to fetch city');
      }
    } catch (e) {
      rethrow;
    }
  }
}
