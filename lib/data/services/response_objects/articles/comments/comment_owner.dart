import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_owner.freezed.dart';
part 'comment_owner.g.dart';

@freezed
class CommentOwner with _$CommentOwner {
  const CommentOwner._();
  const factory CommentOwner({
    required String username,
    required String preferred_username,
    required String? avatar,
    required String id,
  }) = _CommentOwner;

  factory CommentOwner.fromJson(Map<String, dynamic> json) =>
      _$CommentOwnerFromJson(json);
}