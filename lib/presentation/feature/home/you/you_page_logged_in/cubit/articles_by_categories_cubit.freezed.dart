// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_by_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticlesByCategoriesState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Article> get articlesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticlesByCategoriesStateCopyWith<ArticlesByCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesByCategoriesStateCopyWith<$Res> {
  factory $ArticlesByCategoriesStateCopyWith(ArticlesByCategoriesState value,
          $Res Function(ArticlesByCategoriesState) then) =
      _$ArticlesByCategoriesStateCopyWithImpl<$Res, ArticlesByCategoriesState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Article> articlesList});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$ArticlesByCategoriesStateCopyWithImpl<$Res,
        $Val extends ArticlesByCategoriesState>
    implements $ArticlesByCategoriesStateCopyWith<$Res> {
  _$ArticlesByCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articlesList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      articlesList: null == articlesList
          ? _value.articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticlesByCategoriesStateCopyWith<$Res>
    implements $ArticlesByCategoriesStateCopyWith<$Res> {
  factory _$$_ArticlesByCategoriesStateCopyWith(
          _$_ArticlesByCategoriesState value,
          $Res Function(_$_ArticlesByCategoriesState) then) =
      __$$_ArticlesByCategoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Article> articlesList});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_ArticlesByCategoriesStateCopyWithImpl<$Res>
    extends _$ArticlesByCategoriesStateCopyWithImpl<$Res,
        _$_ArticlesByCategoriesState>
    implements _$$_ArticlesByCategoriesStateCopyWith<$Res> {
  __$$_ArticlesByCategoriesStateCopyWithImpl(
      _$_ArticlesByCategoriesState _value,
      $Res Function(_$_ArticlesByCategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articlesList = null,
  }) {
    return _then(_$_ArticlesByCategoriesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      articlesList: null == articlesList
          ? _value._articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_ArticlesByCategoriesState implements _ArticlesByCategoriesState {
  const _$_ArticlesByCategoriesState(
      {this.status = const BaseStatus.initial(),
      final List<Article> articlesList = const []})
      : _articlesList = articlesList;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Article> _articlesList;
  @override
  @JsonKey()
  List<Article> get articlesList {
    if (_articlesList is EqualUnmodifiableListView) return _articlesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articlesList);
  }

  @override
  String toString() {
    return 'ArticlesByCategoriesState(status: $status, articlesList: $articlesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticlesByCategoriesState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._articlesList, _articlesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_articlesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticlesByCategoriesStateCopyWith<_$_ArticlesByCategoriesState>
      get copyWith => __$$_ArticlesByCategoriesStateCopyWithImpl<
          _$_ArticlesByCategoriesState>(this, _$identity);
}

abstract class _ArticlesByCategoriesState implements ArticlesByCategoriesState {
  const factory _ArticlesByCategoriesState(
      {final BaseStatus<dynamic> status,
      final List<Article> articlesList}) = _$_ArticlesByCategoriesState;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Article> get articlesList;
  @override
  @JsonKey(ignore: true)
  _$$_ArticlesByCategoriesStateCopyWith<_$_ArticlesByCategoriesState>
      get copyWith => throw _privateConstructorUsedError;
}
