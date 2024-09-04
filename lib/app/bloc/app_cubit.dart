import 'package:auth_client/auth_client.dart';
import 'package:bnka_challenge/app/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void onLoginSuccess({required User user}) {
    emit(
      state.copyWith(
        user: user,
        authStatus: AppAuthStatus.authenticated,
      ),
    );
  }

  void onLogout() {
    emit(
      state.copyWith(
        user: null,
        authStatus: AppAuthStatus.unauthenticated,
      ),
    );
  }
}
