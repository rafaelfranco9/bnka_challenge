import 'package:bnka_challenge/constants/constants.dart';
import 'package:bnka_challenge/helpers/form_validators.dart';
import 'package:bnka_challenge/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  bool _emailIsDirty = false;
  bool _passwordIsDirty = false;

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
    _emailIsDirty = true;
    _validateForm();
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
    _passwordIsDirty = true;
    _validateForm();
  }

  Future<void> submit() async {
    if (!state.formIsValid || state.status.isLoading) return;

    try {
      emit(state.copyWith(status: LoginStatus.loading));
      await Future.delayed(const Duration(seconds: 2), () {
        final validCredentials =
            state.email == kLoginEmail && state.password == kLoginPassword;
        if (!validCredentials) throw Exception();
      });
      emit(state.copyWith(status: LoginStatus.success));
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.error));
      emit(state.copyWith(status: LoginStatus.initial));
    }
  }

  void _validateForm() {
    final emailError = _emailIsDirty ? emailValidator(state.email) : null;
    final passwordError =
        _passwordIsDirty ? passwordValidator(state.password) : null;
    emit(
      state.copyWith(
        emailError: emailError,
        passwordError: passwordError,
        formIsValid: (_emailIsDirty && emailError == null) &&
            (_passwordIsDirty && passwordError == null),
      ),
    );
  }
}
