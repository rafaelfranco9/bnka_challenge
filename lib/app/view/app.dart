import 'package:auth_client/auth_client.dart';
import 'package:bnka_challenge/app/bloc/app_cubit.dart';
import 'package:bnka_challenge/l10n/l10n.dart';
import 'package:bnka_challenge/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthClient>(create: (_) => AuthLocalClient()),
      ],
      child: BlocProvider(
        create: (_) => AppCubit(),
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
            '/home': (_) => const Scaffold(body: Center(child: Text('Home'))),
          },
          home: const LoginPage(),
        ),
      ),
    );
  }
}
