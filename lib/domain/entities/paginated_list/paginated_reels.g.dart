// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_reels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedReels _$$_PaginatedReelsFromJson(Map<String, dynamic> json) =>
    _$_PaginatedReels(
      total: json['total'] as int? ?? 0,
      currentPage: json['currentPage'] as int? ?? 1,
      reelsList: (json['reelsList'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PaginatedReelsToJson(_$_PaginatedReels instance) =>
    <String, dynamic>{
      'total': instance.total,
      'currentPage': instance.currentPage,
      'reelsList': instance.reelsList,
    };
