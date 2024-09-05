import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:open_mateo_api_client/src/resources/resources.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../mock_data/mock_data.dart';

void main() {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);
  const path = '/search';

  group('CityResource', () {
    late CityResource cityResource;

    setUp(() {
      cityResource = CityResource(dio: dio);
    });

    test('fetchCityByName', () async {
      dioAdapter.onGet(
        path,
        (server) => server.reply(200, kCitySearchResponse),
        queryParameters: {
          'name': kMockCity.name,
          'count': 1,
          'language': 'en',
          'format': 'json',
        },
      );

      final city = await cityResource.fetchCityByName(kMockCity.name);

      expect(city.name, kMockCity.name);
      expect(city.country, kMockCity.country);
      expect(city.latitude, kMockCity.latitude);
      expect(city.longitude, kMockCity.longitude);
    });

    test('fetchCityByName throws exception if Internal Server Error happened',
        () async {
      const cityName = 'London';

      dioAdapter.onGet(
        path,
        (server) => server.reply(500, 'Internal Server Error'),
        queryParameters: {
          'name': cityName,
          'count': 1,
          'language': 'en',
          'format': 'json',
        },
      );

      expect(
        () async => cityResource.fetchCityByName(cityName),
        throwsException,
      );
    });

    test('fetchCityByName throws exception if null is returned', () async {
      const cityName = 'London';

      dioAdapter.onGet(
        path,
        (server) => server.reply(200, null),
        queryParameters: {
          'name': cityName,
          'count': 1,
          'language': 'en',
          'format': 'json',
        },
      );

      expect(
        () async => cityResource.fetchCityByName(cityName),
        throwsException,
      );
    });
  });
}
