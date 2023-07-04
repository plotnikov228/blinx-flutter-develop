import 'package:blinx/data/api/api_config.dart';
import 'package:blinx/injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const Collection._();

  const factory Collection({
    @JsonKey(toJson: null, includeIfNull: false) int? id,
    required String name,
    @JsonKey(toJson: null, includeIfNull: false) List<String>? articles,
    @JsonKey(toJson: null, includeIfNull: false) Article? article,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  String? get imageUrl => article == null
      ? null
      : (injector<ApiConfig>().imageUrl +
          article!.media.primaryImage.source.original);
}

@freezed
class Article with _$Article {
  factory Article({
    required Media media,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Media with _$Media {
  factory Media({
    required PrimaryImage primaryImage,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class PrimaryImage with _$PrimaryImage {
  factory PrimaryImage({
    required Source source,
  }) = _PrimaryImage;

  factory PrimaryImage.fromJson(Map<String, dynamic> json) =>
      _$PrimaryImageFromJson(json);
}

@freezed
class Source with _$Source {
  factory Source({
    @Default('') String original,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
