import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_reels.freezed.dart';
part 'paginated_reels.g.dart';

@freezed
class PaginatedReels with _$PaginatedReels {
  const factory PaginatedReels({
    @Default(0) int total,
    @Default(1) int currentPage,
    @Default([]) List<Article> reelsList,
  }) = _PaginatedReels;

  factory PaginatedReels.fromJson(Map<String, dynamic> json) =>
      _$PaginatedReelsFromJson(json);
}
