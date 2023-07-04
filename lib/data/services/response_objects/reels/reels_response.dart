import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reels_response.freezed.dart';
part 'reels_response.g.dart';

@freezed
class ReelsResponse with _$ReelsResponse {
  const ReelsResponse._();

  const factory ReelsResponse({
    required int total,
    required int offset,
    required int limit,
    required List<Article> results,
  }) = _ReelsResponse;

  factory ReelsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReelsResponseFromJson(json);
}
