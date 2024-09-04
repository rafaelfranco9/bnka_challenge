import 'package:bnka_challenge/app/app.dart';
import 'package:bnka_challenge/bootstrap.dart';
import 'package:open_mateo_api_client/open_mateo_api_client.dart';

void main() async {
  final x = await OpenMateoApiClient().cityResource.fetchCityByName('Berlin');
  print(x);
  bootstrap(() => const App());
}
