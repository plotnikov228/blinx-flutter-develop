part of 'register_email_cubit.dart';

@freezed
class RegisterEmailState with _$RegisterEmailState {
  const factory RegisterEmailState({
    required Email email,
    required BaseStatus status,
  }) = _RegisterEmailState;
}
