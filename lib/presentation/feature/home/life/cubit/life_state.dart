part of 'life_cubit.dart';

@freezed
class LifeState with _$LifeState {
  const LifeState._();

  const factory LifeState({
    required BaseStatus status,
    Content? content,
  }) = _LifeState;

  bool get shouldShowShimmer => !status.isSuccess || status.isLoading;

  bool get shouldShowHero => content != null && content!.heros.isNotEmpty;

  bool get shouldShowReels => content != null && content!.reels.isNotEmpty;

  bool get shouldShowTrending =>
      content != null && content!.trending.isNotEmpty;

  bool get shouldShowTopStory =>
      content != null && content!.topStory.isNotEmpty;

  bool get shouldShowAd => content != null && content!.advertises.isNotEmpty;
}
