import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const LoginView(),
    );
  }
}