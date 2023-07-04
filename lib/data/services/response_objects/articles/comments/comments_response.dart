import 'package:blinx/data/services/response_objects/articles/comments/comment_owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comments_response.freezed.dart';
part 'comments_response.g.dart';

@freezed
class CommentsResponse with _$CommentsResponse {
  const CommentsResponse._();
  const factory CommentsResponse({
    required int id,
    required int version,
    required DateTime createDate,
    required DateTime updateDate,
    required CommentOwner owner,
    required String articlePath,
    required String content,
    required bool? isLiked,
    required int? totalLikes,
    required List<CommentsResponse> replies,
  }) = _CommentsResponse;

  factory CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseFromJson(json);
}