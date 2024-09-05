import 'package:bloc_test/bloc_test.dart';
import 'package:bnka_challenge/cities/constants/constants.dart';
import 'package:bnka_challenge/favorites/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_repository/weather_repository.dart';

import '../../mock_data/mock_data.dart';

class WeatherMockRepository extends Mock implements WeatherRepository {}

void main() {
  group('FavoritesCubit', () {
    late WeatherRepository weatherRepository;
    late FavoritesCubit favoritesCubit;

    setUp(() {
      weatherRepository = WeatherMockRepository();
      favoritesCubit = FavoritesCubit(weatherRepository: weatherRepository);
      when(() => weatherRepository.fetchWeatherByCityName(any())).thenAnswer(
        (_) async => kMockCityWeather,
      );
    });

    test('initial state is FavoritesState()', () {
      expect(favoritesCubit.state, const FavoritesState());
    });

    blocTest(
      'init',
      build: () => favoritesCubit,
      act: (bloc) => bloc.init(),
      expect: () => [
        const FavoritesState(status: FavoritesStatus.loading),
        FavoritesState(
          status: FavoritesStatus.success,
          favorites: Map.fromIterables(
            kDefaultCities,
            kDefaultCities.map((_) => kMockCityWeather).toList(),
          ),
        ),
      ],
    );

    blocTest(
      'init with failure',
      build: () => favoritesCubit,
      act: (bloc) => bloc.init(),
      setUp: () {
        when(() => weatherRepository.fetchWeatherByCityName(any())).thenThrow(
          Exception(),
        );
      },
      expect: () => [
        const FavoritesState(status: FavoritesStatus.loading),
        const FavoritesState(status: FavoritesStatus.error),
      ],
    );

    blocTest(
      'toggleFavorite (not exists)',
      build: () => favoritesCubit,
      act: (bloc) => bloc.toggleFavorite('city1'),
      expect: () => [
        const FavoritesState(status: FavoritesStatus.loading),
        FavoritesState(
          status: FavoritesStatus.success,
          favorites: {'city1': kMockCityWeather},
        ),
      ],
    );

    blocTest(
      'toggleFavorite (it exists)',
      build: () => favoritesCubit,
      act: (bloc) => bloc.toggleFavorite('city1'),
      seed: () => FavoritesState(
        favorites: {
          'city1': kMockCityWeather,
          'city2': kMockCityWeather,
          'city3': kMockCityWeather,
        },
      ),
      expect: () => [
        FavoritesState(
          favorites: {
            'city2': kMockCityWeather,
            'city3': kMockCityWeather,
          },
        ),
      ],
    );

    blocTest(
      'toggleFavorite with failure',
      build: () => favoritesCubit,
      act: (bloc) => bloc.toggleFavorite('city1'),
      setUp: () {
        when(() => weatherRepository.fetchWeatherByCityName(any())).thenThrow(
          Exception(),
        );
      },
      expect: () => [
        const FavoritesState(status: FavoritesStatus.loading),
        const FavoritesState(status: FavoritesStatus.error),
      ],
    );

    blocTest(
      'deleteByCityName',
      build: () => favoritesCubit,
      act: (bloc) => bloc.deleteByCityName(kMockCityWeather2.city),
      seed: () => FavoritesState(
        favorites: {
          'city1': kMockCityWeather,
          'city2': kMockCityWeather2,
        },
      ),
      expect: () => [
        FavoritesState(
          favorites: {
            'city1': kMockCityWeather,
          },
        ),
      ],
    );
  });
}
