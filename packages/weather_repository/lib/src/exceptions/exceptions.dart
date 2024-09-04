abstract class WeatherException implements Exception {
  const WeatherException([this.error, this.stackTrace]);

  final Object? error;

  final StackTrace? stackTrace;
}

class FetchWeatherByCityNameFailure extends WeatherException {
  const FetchWeatherByCityNameFailure(super.error, super.stackTrace);
}
