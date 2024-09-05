import 'package:auth_client/auth_client.dart';
import 'package:bnka_challenge/helpers/form_validators.dart';
import 'package:bnka_challenge/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required AuthClient authClient})
      : _authClient = authClient,
        super(const LoginState());

  final AuthClient _authClient;

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
      final user = await _authClient.login(state.email!, state.password!);
      emit(state.copyWith(status: LoginStatus.success, loggedUser: user));
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
