part of 'interests_cubit.dart';

@freezed
class InterestsState with _$InterestsState {
  const InterestsState._();

  const factory InterestsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Category> allCategories,
    @Default({}) Map<String, String> likedCategories,
  }) = _InterestsState;

  bool isLikedByUser(String id) => likedCategories.containsKey(id);

  bool get canSave => likedCategories.length >= 2;

  List<String> get selectedCategories => likedCategories.values.toList();
}
