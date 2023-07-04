part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const ResetPasswordState._();

  const factory ResetPasswordState({
    required Email email,
    required BaseStatus status,
  }) = _ResetPasswordState;

  bool get isFormDataValid => email.isValid;
}
