part of 'authorization_cubit.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const AuthorizationState._();

  factory AuthorizationState({
    @Default(false) bool isAuthenticated,
  }) = _AuthorizationState;
}
