part of 'moments_cubit.dart';

@freezed
class MomentsState with _$MomentsState {
  const MomentsState._();

  factory MomentsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    StorytellerMoments? selectedMoment,
    @Default({}) Map<String, Moment> moments,
    @Default([]) List<StorytellerMoments> storytellers,
  }) = _MomentsState;

  Iterable<String> get authorsAvatarUrls => storytellers.map((e) => e.storyTellerAvatarUrl);
}
