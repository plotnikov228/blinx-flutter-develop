// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExploreSearchState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  SortBy get sortByType => throw _privateConstructorUsedError;
  String? get categories => throw _privateConstructorUsedError;
  PaginatedArticles? get paginatedArticles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExploreSearchStateCopyWith<ExploreSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreSearchStateCopyWith<$Res> {
  factory $ExploreSearchStateCopyWith(
          ExploreSearchState value, $Res Function(ExploreSearchState) then) =
      _$ExploreSearchStateCopyWithImpl<$Res, ExploreSearchState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      String searchQuery,
      SortBy sortByType,
      String? categories,
      PaginatedArticles? paginatedArticles});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $PaginatedArticlesCopyWith<$Res>? get paginatedArticles;
}

/// @nodoc
class _$ExploreSearchStateCopyWithImpl<$Res, $Val extends ExploreSearchState>
    implements $ExploreSearchStateCopyWith<$Res> {
  _$ExploreSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? searchQuery = null,
    Object? sortByType = null,
    Object? categories = freezed,
    Object? paginatedArticles = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      sortByType: null == sortByType
          ? _value.sortByType
          : sortByType // ignore: cast_nullable_to_non_nullable
              as SortBy,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
      paginatedArticles: freezed == paginatedArticles
          ? _value.paginatedArticles
          : paginatedArticles // ignore: cast_nullable_to_non_nullable
              as PaginatedArticles?,
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
  $PaginatedArticlesCopyWith<$Res>? get paginatedArticles {
    if (_value.paginatedArticles == null) {
      return null;
    }

    return $PaginatedArticlesCopyWith<$Res>(_value.paginatedArticles!, (value) {
      return _then(_value.copyWith(paginatedArticles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExploreSearchStateCopyWith<$Res>
    implements $ExploreSearchStateCopyWith<$Res> {
  factory _$$_ExploreSearchStateCopyWith(_$_ExploreSearchState value,
          $Res Function(_$_ExploreSearchState) then) =
      __$$_ExploreSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      String searchQuery,
      SortBy sortByType,
      String? categories,
      PaginatedArticles? paginatedArticles});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $PaginatedArticlesCopyWith<$Res>? get paginatedArticles;
}

/// @nodoc
class __$$_ExploreSearchStateCopyWithImpl<$Res>
    extends _$ExploreSearchStateCopyWithImpl<$Res, _$_ExploreSearchState>
    implements _$$_ExploreSearchStateCopyWith<$Res> {
  __$$_ExploreSearchStateCopyWithImpl(
      _$_ExploreSearchState _value, $Res Function(_$_ExploreSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? searchQuery = null,
    Object? sortByType = null,
    Object? categories = freezed,
    Object? paginatedArticles = freezed,
  }) {
    return _then(_$_ExploreSearchState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      sortByType: null == sortByType
          ? _value.sortByType
          : sortByType // ignore: cast_nullable_to_non_nullable
              as SortBy,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
      paginatedArticles: freezed == paginatedArticles
          ? _value.paginatedArticles
          : paginatedArticles // ignore: cast_nullable_to_non_nullable
              as PaginatedArticles?,
    ));
  }
}

/// @nodoc

class _$_ExploreSearchState extends _ExploreSearchState {
  const _$_ExploreSearchState(
      {this.status = const BaseStatus.initial(),
      this.searchQuery = '',
      this.sortByType = SortBy.newestToOldest,
      this.categories,
      this.paginatedArticles})
      : super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final SortBy sortByType;
  @override
  final String? categories;
  @override
  final PaginatedArticles? paginatedArticles;

  @override
  String toString() {
    return 'ExploreSearchState(status: $status, searchQuery: $searchQuery, sortByType: $sortByType, categories: $categories, paginatedArticles: $paginatedArticles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExploreSearchState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.sortByType, sortByType) ||
                other.sortByType == sortByType) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.paginatedArticles, paginatedArticles) ||
                other.paginatedArticles == paginatedArticles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, searchQuery, sortByType,
      categories, paginatedArticles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExploreSearchStateCopyWith<_$_ExploreSearchState> get copyWith =>
      __$$_ExploreSearchStateCopyWithImpl<_$_ExploreSearchState>(
          this, _$identity);
}

abstract class _ExploreSearchState extends ExploreSearchState {
  const factory _ExploreSearchState(
      {final BaseStatus<dynamic> status,
      final String searchQuery,
      final SortBy sortByType,
      final String? categories,
      final PaginatedArticles? paginatedArticles}) = _$_ExploreSearchState;
  const _ExploreSearchState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  String get searchQuery;
  @override
  SortBy get sortByType;
  @override
  String? get categories;
  @override
  PaginatedArticles? get paginatedArticles;
  @override
  @JsonKey(ignore: true)
  _$$_ExploreSearchStateCopyWith<_$_ExploreSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
