import 'package:freezed_annotation/freezed_annotation.dart';

part 'liked_categories_request_body.freezed.dart';
part 'liked_categories_request_body.g.dart';

@freezed
abstract class LikedCategoriesRequestBody with _$LikedCategoriesRequestBody {
  const factory LikedCategoriesRequestBody({
    required List<String> likedCategories,
  }) = _LikedCategoriesRequestBody;

  factory LikedCategoriesRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LikedCategoriesRequestBodyFromJson(json);
}
