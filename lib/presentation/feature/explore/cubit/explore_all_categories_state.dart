part of 'explore_all_categories_cubit.dart';

@freezed
class ExploreAllCategoriesState with _$ExploreAllCategoriesState {
  const factory ExploreAllCategoriesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Category> categoriesList,
    @Default(-1) int selectedCategoryIndex,
  }) = _ExploreAllCategoriesState;
}
