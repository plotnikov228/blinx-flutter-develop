// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedArticles _$PaginatedArticlesFromJson(Map<String, dynamic> json) {
  return _PaginatedArticles.fromJson(json);
}

/// @nodoc
mixin _$PaginatedArticles {
  List<Article> get articlesList => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedArticlesCopyWith<PaginatedArticles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedArticlesCopyWith<$Res> {
  factory $PaginatedArticlesCopyWith(
          PaginatedArticles value, $Res Function(PaginatedArticles) then) =
      _$PaginatedArticlesCopyWithImpl<$Res, PaginatedArticles>;
  @useResult
  $Res call({List<Article> articlesList, int currentPage, int total});
}

/// @nodoc
class _$PaginatedArticlesCopyWithImpl<$Res, $Val extends PaginatedArticles>
    implements $PaginatedArticlesCopyWith<$Res> {
  _$PaginatedArticlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articlesList = null,
    Object? currentPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      articlesList: null == articlesList
          ? _value.articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedArticlesCopyWith<$Res>
    implements $PaginatedArticlesCopyWith<$Res> {
  factory _$$_PaginatedArticlesCopyWith(_$_PaginatedArticles value,
          $Res Function(_$_PaginatedArticles) then) =
      __$$_PaginatedArticlesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article> articlesList, int currentPage, int total});
}

/// @nodoc
class __$$_PaginatedArticlesCopyWithImpl<$Res>
    extends _$PaginatedArticlesCopyWithImpl<$Res, _$_PaginatedArticles>
    implements _$$_PaginatedArticlesCopyWith<$Res> {
  __$$_PaginatedArticlesCopyWithImpl(
      _$_PaginatedArticles _value, $Res Function(_$_PaginatedArticles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articlesList = null,
    Object? currentPage = null,
    Object? total = null,
  }) {
    return _then(_$_PaginatedArticles(
      articlesList: null == articlesList
          ? _value._articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedArticles implements _PaginatedArticles {
  const _$_PaginatedArticles(
      {final List<Article> articlesList = const [],
      this.currentPage = 1,
      this.total = 0})
      : _articlesList = articlesList;

  factory _$_PaginatedArticles.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedArticlesFromJson(json);

  final List<Article> _articlesList;
  @override
  @JsonKey()
  List<Article> get articlesList {
    if (_articlesList is EqualUnmodifiableListView) return _articlesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articlesList);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'PaginatedArticles(articlesList: $articlesList, currentPage: $currentPage, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedArticles &&
            const DeepCollectionEquality()
                .equals(other._articlesList, _articlesList) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_articlesList), currentPage, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedArticlesCopyWith<_$_PaginatedArticles> get copyWith =>
      __$$_PaginatedArticlesCopyWithImpl<_$_PaginatedArticles>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedArticlesToJson(
      this,
    );
  }
}

abstract class _PaginatedArticles implements PaginatedArticles {
  const factory _PaginatedArticles(
      {final List<Article> articlesList,
      final int currentPage,
      final int total}) = _$_PaginatedArticles;

  factory _PaginatedArticles.fromJson(Map<String, dynamic> json) =
      _$_PaginatedArticles.fromJson;

  @override
  List<Article> get articlesList;
  @override
  int get currentPage;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedArticlesCopyWith<_$_PaginatedArticles> get copyWith =>
      throw _privateConstructorUsedError;
}
