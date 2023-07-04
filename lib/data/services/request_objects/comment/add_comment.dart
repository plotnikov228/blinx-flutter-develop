import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_comment.freezed.dart';
part 'add_comment.g.dart';

@freezed
abstract class AddCommentBody with _$AddCommentBody {
  const factory AddCommentBody({
    required String content,
  }) = _AddCommentBody;

  factory AddCommentBody.fromJson(Map<String, dynamic> json) =>
      _$AddCommentBodyFromJson(json);
}
