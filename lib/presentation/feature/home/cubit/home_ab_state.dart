import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ab_state.freezed.dart';

@freezed
class HomeAbState with _$HomeAbState {
  const HomeAbState._();

  factory HomeAbState({
    @Default(true) bool showAb,
    @Default('') String page,
    @Default([]) List<Article> playList,
    Article? selectedArticle,
  }) = _HomeAbState;
}
