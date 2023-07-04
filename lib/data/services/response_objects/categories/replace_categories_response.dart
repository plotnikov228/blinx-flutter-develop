import 'package:freezed_annotation/freezed_annotation.dart';

part 'replace_categories_response.freezed.dart';
part 'replace_categories_response.g.dart';

@freezed
abstract class ReplaceCategoriesResponse with _$ReplaceCategoriesResponse {
  const factory ReplaceCategoriesResponse({
    required int id,
    required int version,
    required String createDate,
    required String updateDate,
    required List<String> categoriesList,
  }) = _ReplaceCategoriesResponse;

  factory ReplaceCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$ReplaceCategoriesResponseFromJson(json);
}
