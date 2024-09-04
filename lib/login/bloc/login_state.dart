import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    String? email,
    String? password,
    String? emailError,
    String? passwordError,
    @Default(false) bool formIsValid,
  }) = _LoginState;
}
