import 'package:freezed_annotation/freezed_annotation.dart';

part 'replace_categories_request_body.freezed.dart';
part 'replace_categories_request_body.g.dart';

@freezed
abstract class ReplaceCategoriesRequestBody
    with _$ReplaceCategoriesRequestBody {
  const factory ReplaceCategoriesRequestBody({
    required List<String> categories,
  }) = _ReplaceCategoriesRequestBody;

  factory ReplaceCategoriesRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ReplaceCategoriesRequestBodyFromJson(json);
}
