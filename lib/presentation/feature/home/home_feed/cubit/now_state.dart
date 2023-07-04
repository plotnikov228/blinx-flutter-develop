part of 'now_cubit.dart';

@freezed
class NowState with _$NowState {
  const NowState._();

  const factory NowState({
    required BaseStatus status,
    Content? content,
  }) = _NowState;

  bool get shouldShowShimmer => !status.isSuccess || status.isLoading;

  bool get shouldShowHero => content != null && content!.heros.isNotEmpty;

  bool get shouldShowReels => content != null && content!.reels.isNotEmpty;

  bool get shouldShowTrending =>
      content != null && content!.trending.isNotEmpty;

  bool get shouldShowTopStory =>
      content != null && content!.topStory.isNotEmpty;

  bool get shouldShowAd => content != null && content!.advertises.isNotEmpty;
}
