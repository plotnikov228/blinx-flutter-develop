part of 'more_cubit.dart';

@freezed
class MoreState with _$MoreState {
  const MoreState._();

  const factory MoreState({
    required BaseStatus status,
    Content? content,
  }) = _MoreState;

  bool get shouldShowShimmer => !status.isSuccess || status.isLoading;

  bool get shouldShowHero => content != null && content!.heros.isNotEmpty;

  bool get shouldShowReels => content != null && content!.reels.isNotEmpty;

  bool get shouldShowTrending =>
      content != null && content!.trending.isNotEmpty;

  bool get shouldShowTopStory =>
      content != null && content!.topStory.isNotEmpty;

  bool get shouldShowAd => content != null && content!.advertises.isNotEmpty;
}
