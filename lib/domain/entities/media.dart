import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const factory Media({
    @Default([]) List<PrimaryImage> otherAssets,
    required PrimaryImage primaryImage,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class PrimaryImage with _$PrimaryImage {
  const factory PrimaryImage({
    @Default('') String id,
    @Default('') String path,
    CoverImage? source,
    String? videoId,
    @Default(0) int? videoLength,
    @Default('') String? title,
    @Default('') String? name,
    @Default('') String? description,
    @Default('') String? caption,
    @Default(0.0) double? seekHead,
    @Default(1920) double? width,
    @Default(1080) double? height,
  }) = _PrimaryImage;

  factory PrimaryImage.fromJson(Map<String, dynamic> json) =>
      _$PrimaryImageFromJson(json);
}

@freezed
class CoverImage with _$CoverImage {
  const factory CoverImage({
    @Default('') String original,
    @Default('') String mobileHero,
    @Default('') String mobileArticle,
    @Default('') String mobileArticleSmall,
    @Default('') String mobileBlinx,
  }) = _CoverImage;

  factory CoverImage.fromJson(Map<String, dynamic> json) =>
      _$CoverImageFromJson(json);
}
