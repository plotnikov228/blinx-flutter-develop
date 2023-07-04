import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_comment.freezed.dart';
part 'reply_comment.g.dart';

@freezed
abstract class ReplyCommentBody with _$ReplyCommentBody {
  const factory ReplyCommentBody({
    required String content,
  }) = _ReplyCommentBody;

  factory ReplyCommentBody.fromJson(Map<String, dynamic> json) =>
      _$ReplyCommentBodyFromJson(json);
}
