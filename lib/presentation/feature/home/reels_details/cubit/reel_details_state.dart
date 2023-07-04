part of 'reel_details_cubit.dart';

@freezed
class ReelDetailsState with _$ReelDetailsState {
  const ReelDetailsState._();

  const factory ReelDetailsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default({}) Map<String, Article> data,
  }) = _ReelDetailsState;

  List<Article> get articles => data.values.toList();
}
