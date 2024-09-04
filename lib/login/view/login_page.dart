import 'package:auth_client/auth_client.dart';
import 'package:bnka_challenge/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        authClient: context.read<AuthClient>(),
      ),
      child: const LoginView(),
    );
  }
}
