part of 'comments_cubit.dart';

@freezed
class CommentsState with _$CommentsState {
  const CommentsState._();

  const factory CommentsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<CommentsResponse> comments,
  }) = _CommentsState;

  // bool ownerComment(String id) => likedItems.containsKey(id);
}
