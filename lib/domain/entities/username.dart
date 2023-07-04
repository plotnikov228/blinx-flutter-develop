import 'package:blinx/extensions/string_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'username.g.dart';
part 'username.freezed.dart';

@freezed
class Username with _$Username {
  const Username._();

  const factory Username(String value) = _Username;

  factory Username.empty() => const Username('');

  factory Username.fromJson(Map<String, dynamic> json) =>
      _$UsernameFromJson(json);

  bool get isValid => value.isNotNullOrEmpty;

  String get withAtPrefix => '@$value';

  String get withAtSuffix => '$value@';

  bool get doesContainSpecialCharacter => value.contains('ß');
}
