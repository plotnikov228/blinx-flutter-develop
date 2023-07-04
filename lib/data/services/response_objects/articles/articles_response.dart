import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_response.freezed.dart';
part 'articles_response.g.dart';

@freezed
class ArticlesResponse with _$ArticlesResponse {
  const ArticlesResponse._();
  const factory ArticlesResponse({
    required int total,
    required int offset,
    required int limit,
    required List<Article> results,
  }) = _ArticlesResponse;

  factory ArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticlesResponseFromJson(json);
}

@freezed
class _Storyteller with _$_Storyteller {
  const factory _Storyteller({
    required String id,
    required String path,
    required String name,
    required String displayName,
    required _Avatar? avatar,
    required bool followed,
  }) = __Storyteller;
}

@freezed
class _Avatar with _$_Avatar {
  const factory _Avatar({
    required String avatar,
  }) = __Avatar;
}
