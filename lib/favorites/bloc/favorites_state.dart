import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_repository/weather_repository.dart';

part 'favorites_state.freezed.dart';

enum FavoritesStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(FavoritesStatus.initial) FavoritesStatus status,
    @Default({}) Map<String, CityWeather> favorites,
  }) = _FavoritesState;
}
