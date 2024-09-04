import 'dart:developer';

import 'package:dio/dio.dart';

import 'city.dart';

class CityResource {
  CityResource({required Dio dio}) : _dio = dio;

  final Dio _dio;
  static const _path = '/search';

  Future<City?> fetchCityByName(String name) async {
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
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
