part of 'reels_cubit.dart';

@freezed
class ReelsState with _$ReelsState {
  const ReelsState._();

  const factory ReelsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Article> reelsList,
    @Default(0) int currentPage,
    @Default(0) int total,
    @Default(null) Article? selectedArticle,
  }) = _ReelsState;

  bool get shouldShowShimmer => !status.isSuccess && !status.isLazyLoading;

  int get nextPage => currentPage + 1;

  int get lastPage => (total / 10).ceil();

  bool get hasMoreContents => nextPage <= lastPage;
}
