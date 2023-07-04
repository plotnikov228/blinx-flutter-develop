part of 'liked_categories_cubit.dart';

@freezed
class LikedCategoriesState with _$LikedCategoriesState {
  const LikedCategoriesState._();

  const factory LikedCategoriesState({
    @Default([]) List<Category> likedCategoriesList,
    Category? selectedCategory,
    @Default(BaseStatus.initial()) BaseStatus status,
  }) = _LikedCategoriesState;

  bool get needSpaceForCategories => likedCategoriesList.length > 1;
}
