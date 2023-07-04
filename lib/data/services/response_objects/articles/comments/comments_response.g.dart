// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentsResponse _$$_CommentsResponseFromJson(Map<String, dynamic> json) =>
    _$_CommentsResponse(
      id: json['id'] as int,
      version: json['version'] as int,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      owner: CommentOwner.fromJson(json['owner'] as Map<String, dynamic>),
      articlePath: json['articlePath'] as String,
      content: json['content'] as String,
      isLiked: json['isLiked'] as bool?,
      totalLikes: json['totalLikes'] as int?,
      replies: (json['replies'] as List<dynamic>)
          .map((e) => CommentsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentsResponseToJson(_$_CommentsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'owner': instance.owner,
      'articlePath': instance.articlePath,
      'content': instance.content,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
      'replies': instance.replies,
    };
