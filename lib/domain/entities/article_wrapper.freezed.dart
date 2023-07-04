// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleWrapper _$ArticleWrapperFromJson(Map<String, dynamic> json) {
  return _ArticleWrapper.fromJson(json);
}

/// @nodoc
mixin _$ArticleWrapper {
  List<Article> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleWrapperCopyWith<ArticleWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleWrapperCopyWith<$Res> {
  factory $ArticleWrapperCopyWith(
          ArticleWrapper value, $Res Function(ArticleWrapper) then) =
      _$ArticleWrapperCopyWithImpl<$Res, ArticleWrapper>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class _$ArticleWrapperCopyWithImpl<$Res, $Val extends ArticleWrapper>
    implements $ArticleWrapperCopyWith<$Res> {
  _$ArticleWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleWrapperCopyWith<$Res>
    implements $ArticleWrapperCopyWith<$Res> {
  factory _$$_ArticleWrapperCopyWith(
          _$_ArticleWrapper value, $Res Function(_$_ArticleWrapper) then) =
      __$$_ArticleWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$_ArticleWrapperCopyWithImpl<$Res>
    extends _$ArticleWrapperCopyWithImpl<$Res, _$_ArticleWrapper>
    implements _$$_ArticleWrapperCopyWith<$Res> {
  __$$_ArticleWrapperCopyWithImpl(
      _$_ArticleWrapper _value, $Res Function(_$_ArticleWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$_ArticleWrapper(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleWrapper extends _ArticleWrapper {
  _$_ArticleWrapper({required final List<Article> articles})
      : _articles = articles,
        super._();

  factory _$_ArticleWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleWrapperFromJson(json);

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ArticleWrapper(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleWrapper &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleWrapperCopyWith<_$_ArticleWrapper> get copyWith =>
      __$$_ArticleWrapperCopyWithImpl<_$_ArticleWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleWrapperToJson(
      this,
    );
  }
}

abstract class _ArticleWrapper extends ArticleWrapper {
  factory _ArticleWrapper({required final List<Article> articles}) =
      _$_ArticleWrapper;
  _ArticleWrapper._() : super._();

  factory _ArticleWrapper.fromJson(Map<String, dynamic> json) =
      _$_ArticleWrapper.fromJson;

  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleWrapperCopyWith<_$_ArticleWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
