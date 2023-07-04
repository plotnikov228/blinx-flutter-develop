import 'package:email_validator/email_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.g.dart';
part 'email.freezed.dart';

@freezed
class Email with _$Email {
  const Email._();

  const factory Email(String value) = _Email;

  factory Email.empty() => const Email('');

  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);

  bool get isValid => EmailValidator.validate(value);

  bool get doesContainSpecialCharacter => value.contains('ß');
}
