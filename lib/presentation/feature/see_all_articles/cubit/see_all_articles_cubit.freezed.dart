// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'see_all_articles_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeeAllArticlesState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  PaginatedArticles get paginatedArticles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeeAllArticlesStateCopyWith<SeeAllArticlesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeeAllArticlesStateCopyWith<$Res> {
  factory $SeeAllArticlesStateCopyWith(
          SeeAllArticlesState value, $Res Function(SeeAllArticlesState) then) =
      _$SeeAllArticlesStateCopyWithImpl<$Res, SeeAllArticlesState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, PaginatedArticles paginatedArticles});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $PaginatedArticlesCopyWith<$Res> get paginatedArticles;
}

/// @nodoc
class _$SeeAllArticlesStateCopyWithImpl<$Res, $Val extends SeeAllArticlesState>
    implements $SeeAllArticlesStateCopyWith<$Res> {
  _$SeeAllArticlesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SeeAllArticlesStateCopyWith<$Res>
    implements $SeeAllArticlesStateCopyWith<$Res> {
  factory _$$_SeeAllArticlesStateCopyWith(_$_SeeAllArticlesState value,
          $Res Function(_$_SeeAllArticlesState) then) =
      __$$_SeeAllArticlesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, PaginatedArticles paginatedArticles});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $PaginatedArticlesCopyWith<$Res> get paginatedArticles;
}

/// @nodoc
class __$$_SeeAllArticlesStateCopyWithImpl<$Res>
    extends _$SeeAllArticlesStateCopyWithImpl<$Res, _$_SeeAllArticlesState>
    implements _$$_SeeAllArticlesStateCopyWith<$Res> {
  __$$_SeeAllArticlesStateCopyWithImpl(_$_SeeAllArticlesState _value,
      $Res Function(_$_SeeAllArticlesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? paginatedArticles = null,
  }) {
    return _then(_$_SeeAllArticlesState(
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

class _$_SeeAllArticlesState extends _SeeAllArticlesState {
  const _$_SeeAllArticlesState(
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
    return 'SeeAllArticlesState(status: $status, paginatedArticles: $paginatedArticles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeeAllArticlesState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paginatedArticles, paginatedArticles) ||
                other.paginatedArticles == paginatedArticles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, paginatedArticles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeeAllArticlesStateCopyWith<_$_SeeAllArticlesState> get copyWith =>
      __$$_SeeAllArticlesStateCopyWithImpl<_$_SeeAllArticlesState>(
          this, _$identity);
}

abstract class _SeeAllArticlesState extends SeeAllArticlesState {
  const factory _SeeAllArticlesState(
      {final BaseStatus<dynamic> status,
      final PaginatedArticles paginatedArticles}) = _$_SeeAllArticlesState;
  const _SeeAllArticlesState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  PaginatedArticles get paginatedArticles;
  @override
  @JsonKey(ignore: true)
  _$$_SeeAllArticlesStateCopyWith<_$_SeeAllArticlesState> get copyWith =>
      throw _privateConstructorUsedError;
}
