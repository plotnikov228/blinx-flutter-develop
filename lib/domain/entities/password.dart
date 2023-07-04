import 'package:blinx/presentation/utils/password_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';
part 'password.g.dart';

@freezed
class Password with _$Password {
  const Password._();

  const factory Password(
    String value, {
    @Default(8) int requiredLength,
  }) = _Password;

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);

  factory Password.empty() => const Password('');

  bool get isValid => PasswordValidator.isValid(value);
  bool get hasMinimumLength => PasswordValidator.hasMinimumLength(value);
  bool get isEmpty => value.isEmpty;
}
