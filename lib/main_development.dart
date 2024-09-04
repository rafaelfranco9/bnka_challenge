import 'package:bnka_challenge/app/app.dart';
import 'package:bnka_challenge/bootstrap.dart';
import 'package:open_mateo_api_client/open_mateo_api_client.dart';

void main() async {
  final x =
      await OpenMateoApiClient().weatherResource.fetchWeatherByCoordinates(
            latitude: 52.52,
            longitude: 13.405,
          );
  print(x);
  bootstrap(() => const App());
}
