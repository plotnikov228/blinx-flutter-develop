// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      id: json['id'] as int?,
      name: json['name'] as String,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      article: json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('articles', instance.articles);
  writeNotNull('article', instance.article);
  return val;
}

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'media': instance.media,
    };

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      primaryImage:
          PrimaryImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'primaryImage': instance.primaryImage,
    };

_$_PrimaryImage _$$_PrimaryImageFromJson(Map<String, dynamic> json) =>
    _$_PrimaryImage(
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrimaryImageToJson(_$_PrimaryImage instance) =>
    <String, dynamic>{
      'source': instance.source,
    };

_$_Source _$$_SourceFromJson(Map<String, dynamic> json) => _$_Source(
      original: json['original'] as String? ?? '',
    );

Map<String, dynamic> _$$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'original': instance.original,
    };
