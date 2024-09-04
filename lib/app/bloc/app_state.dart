import 'package:auth_client/auth_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

enum AppAuthStatus {
  authenticated,
  unauthenticated,
}

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(AppAuthStatus.unauthenticated) AppAuthStatus authStatus,
    User? user,
  }) = _AppState;
}
