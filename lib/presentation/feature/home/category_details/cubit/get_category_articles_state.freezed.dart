// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_articles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetCategoryArticlesState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  PaginatedArticles get paginatedArticles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCategoryArticlesStateCopyWith<GetCategoryArticlesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoryArticlesStateCopyWith<$Res> {
  factory $GetCategoryArticlesStateCopyWith(GetCategoryArticlesState value,
          $Res Function(GetCategoryArticlesState) then) =
      _$GetCategoryArticlesStateCopyWithImpl<$Res, GetCategoryArticlesState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, PaginatedArticles paginatedArticles});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $PaginatedArticlesCopyWith<$Res> get paginatedArticles;
}

/// @nodoc
class _$GetCategoryArticlesStateCopyWithImpl<$Res,
        $Val extends GetCategoryArticlesState>
    implements $GetCategoryArticlesStateCopyWith<$Res> {
  _$GetCategoryArticlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? paginatedArticles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      paginatedArticles: null == paginatedArticles
          ? _value.paginatedArticles
          : paginatedArticles // ignore: cast_nullable_to_non_nullable
              as PaginatedArticles,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedArticlesCopyWith<$Res> get paginatedArticles {
    return $PaginatedArticlesCopyWith<$Res>(_value.paginatedArticles, (value) {
      return _then(_value.copyWith(paginatedArticles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetCategoryArticlesStateCopyWith<$Res>
    implements $GetCategoryArticlesStateCopyWith<$Res> {
  factory _$$_GetCategoryArticlesStateCopyWith(
          _$_GetCategoryArticlesState value,
          $Res Function(_$_GetCategoryArticlesState) then) =
      __$$_GetCategoryArticlesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, PaginatedArticles paginatedArticles});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $PaginatedArticlesCopyWith<$Res> get paginatedArticles;
}

/// @nodoc
class __$$_GetCategoryArticlesStateCopyWithImpl<$Res>
    extends _$GetCategoryArticlesStateCopyWithImpl<$Res,
        _$_GetCategoryArticlesState>
    implements _$$_GetCategoryArticlesStateCopyWith<$Res> {
  __$$_GetCategoryArticlesStateCopyWithImpl(_$_GetCategoryArticlesState _value,
      $Res Function(_$_GetCategoryArticlesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? paginatedArticles = null,
  }) {
    return _then(_$_GetCategoryArticlesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      paginatedArticles: null == paginatedArticles
          ? _value.paginatedArticles
          : paginatedArticles // ignore: cast_nullable_to_non_nullable
              as PaginatedArticles,
    ));
  }
}

/// @nodoc

class _$_GetCategoryArticlesState extends _GetCategoryArticlesState {
  _$_GetCategoryArticlesState(
      {this.status = const BaseStatus.initial(),
      this.paginatedArticles = const PaginatedArticles()})
      : super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  @JsonKey()
  final PaginatedArticles paginatedArticles;

  @override
  String toString() {
    return 'GetCategoryArticlesState(status: $status, paginatedArticles: $paginatedArticles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoryArticlesState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paginatedArticles, paginatedArticles) ||
                other.paginatedArticles == paginatedArticles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, paginatedArticles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategoryArticlesStateCopyWith<_$_GetCategoryArticlesState>
      get copyWith => __$$_GetCategoryArticlesStateCopyWithImpl<
          _$_GetCategoryArticlesState>(this, _$identity);
}

abstract class _GetCategoryArticlesState extends GetCategoryArticlesState {
  factory _GetCategoryArticlesState(
      {final BaseStatus<dynamic> status,
      final PaginatedArticles paginatedArticles}) = _$_GetCategoryArticlesState;
  _GetCategoryArticlesState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  PaginatedArticles get paginatedArticles;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategoryArticlesStateCopyWith<_$_GetCategoryArticlesState>
      get copyWith => throw _privateConstructorUsedError;
}
