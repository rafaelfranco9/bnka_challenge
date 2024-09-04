import 'package:bnka_challenge/cities/constants/constants.dart';
import 'package:bnka_challenge/favorites/favorites.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_repository/weather_repository.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(const FavoritesState());

  final WeatherRepository _weatherRepository;

  Future<void> init() async {
    try {
      emit(state.copyWith(status: FavoritesStatus.loading));

      final results = await Future.wait(
        kDefaultCities.map(_weatherRepository.fetchWeatherByCityName),
      );

      emit(
        state.copyWith(
          status: FavoritesStatus.success,
          favorites: Map.fromIterables(kDefaultCities, results),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: FavoritesStatus.error));
    }
  }

  Future<void> toggleFavorite(String city) async {
    try {
      final isFavorite = state.favorites.containsKey(city);
      if (isFavorite) {
        emit(
          state.copyWith(
            favorites: Map.from(state.favorites)..remove(city),
          ),
        );
      } else {
        emit(state.copyWith(status: FavoritesStatus.loading));
        final weatherData =
            await _weatherRepository.fetchWeatherByCityName(city);
        emit(
          state.copyWith(
            status: FavoritesStatus.success,
            favorites: {...state.favorites, city: weatherData},
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(status: FavoritesStatus.error));
    }
  }
}
