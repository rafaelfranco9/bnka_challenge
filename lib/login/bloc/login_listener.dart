import 'package:bnka_challenge/app/bloc/app_cubit.dart';
import 'package:bnka_challenge/login/login.dart';
import 'package:bnka_challenge/splash/view/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void loginListener(BuildContext context, LoginState state) {
  if (state.status.isError) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Credenciales incorrectas. Intente nuevamente.'),
        backgroundColor: Colors.red,
      ),
    );
  }

  if (state.status.isSuccess && state.loggedUser != null) {
    context.read<AppCubit>().onLoginSuccess(user: state.loggedUser!);
    Navigator.of(context).pushReplacementNamed(SplashPage.route);
  }
}
