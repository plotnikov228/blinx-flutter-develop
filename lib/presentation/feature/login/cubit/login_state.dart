part of 'login_cubit.dart';

@freezed
@injectable
class LoginState with _$LoginState {
  const LoginState._();

  factory LoginState({
    required Email email,
    required Password password,
    @Default(false) bool isLoggingIn,
    @Default(false) bool loggedInSuccessfully,
    ResponseError? error,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(email: Email.empty(), password: Password.empty());
  }

  bool get canLogin => email.isValid && !password.isEmpty;
}
