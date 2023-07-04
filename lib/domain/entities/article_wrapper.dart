import 'package:freezed_annotation/freezed_annotation.dart';

import 'article.dart';

part 'article_wrapper.freezed.dart';
part 'article_wrapper.g.dart';

@freezed
class ArticleWrapper with _$ArticleWrapper {
  const ArticleWrapper._();

  factory ArticleWrapper({
    required List<Article> articles,
  }) = _ArticleWrapper;

  factory ArticleWrapper.fromJson(Map<String, dynamic> json) =>
      _$ArticleWrapperFromJson(json);
}
