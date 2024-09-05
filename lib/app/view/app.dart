import 'package:auth_client/auth_client.dart';
import 'package:bnka_challenge/app/bloc/app_cubit.dart';
import 'package:bnka_challenge/cities/view/cities_page.dart';
import 'package:bnka_challenge/favorites/bloc/bloc.dart';
import 'package:bnka_challenge/home/view/home_page.dart';
import 'package:bnka_challenge/l10n/l10n.dart';
import 'package:bnka_challenge/login/view/login_page.dart';
import 'package:bnka_challenge/splash/view/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_repository/weather_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthClient>(
      create: (_) => AuthLocalClient(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppCubit>(
            create: (_) => AppCubit(),
          ),
          BlocProvider<FavoritesCubit>(
            create: (_) => FavoritesCubit(
              weatherRepository: WeatherOpenMateoRepository(),
            )..init(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            useMaterial3: true,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routes: {
            LoginPage.route: (_) => const LoginPage(),
            CitiesPage.route: (_) => const CitiesPage(),
            HomePage.route: (_) => const HomePage(),
            SplashPage.route: (_) => const SplashPage(),
          },
          home: const LoginPage(),
        ),
      ),
    );
  }
}
