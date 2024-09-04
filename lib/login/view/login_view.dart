import 'package:bnka_challenge/login/bloc/bloc.dart';
import 'package:bnka_challenge/shared/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: loginListener,
        builder: (context, state) {
          final cubit = context.read<LoginCubit>();
          return ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 46),
              const Icon(Icons.login_rounded, size: 48),
              const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 38),
              TextField(
                onChanged: cubit.onEmailChanged,
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  errorText: state.emailError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 12),
              TextField(
                onChanged: cubit.onPasswordChanged,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: state.passwordError,
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: state.formIsValid && !state.status.isLoading
                    ? cubit.submit
                    : null,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  disabledBackgroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              if (state.status.isLoading) const LinearProgressIndicator(),
            ],
          );
        },
      ),
    );
  }
}
