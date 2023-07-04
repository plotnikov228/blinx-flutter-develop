import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/content/advertise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required List<Article> heros,
    required List<Article> trending,
    required List<Article> editorsChoice,
    required List<Article> topStory,
    required List<Article> reels,
    @Default([]) List<Advertise> advertises,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
