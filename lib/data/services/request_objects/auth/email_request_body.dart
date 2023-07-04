import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_request_body.freezed.dart';
part 'email_request_body.g.dart';

@freezed
class EmailRequestBody with _$EmailRequestBody {
  factory EmailRequestBody({
    required String email,
  }) = _EmailRequestBody;

  factory EmailRequestBody.fromJson(Map<String, dynamic> json) =>
      _$EmailRequestBodyFromJson(json);
}
