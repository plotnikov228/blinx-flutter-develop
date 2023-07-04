part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();

  factory ChangePasswordState({
    required Password currentPassword,
    required Password newPassword,
    required Password confirmPassword,
    @Default(false) bool isLoading,
    @Default(false) bool savedSuccessfully,
    ResponseError? error,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() {
    return ChangePasswordState(
      currentPassword: Password.empty(),
      newPassword: Password.empty(),
      confirmPassword: Password.empty(),
    );
  }

  bool get canSave =>
      currentPassword.isValid &&
      newPassword.isValid &&
      newPassword == confirmPassword;

  bool get confirmValid => newPassword == confirmPassword;
}
