part of 'finish_registration_cubit.dart';

@freezed
@injectable
class FinishRegistrationState with _$FinishRegistrationState {
  const FinishRegistrationState._();
  const factory FinishRegistrationState({
    required Email email,
    required Password password,
    required Username username,
    required BaseStatus status,
    required bool showPasswordError,
  }) = _FinishRegistrationState;

  bool get isSignupFormValid =>
      email.isValid && username.isValid && password.isValid;
}
