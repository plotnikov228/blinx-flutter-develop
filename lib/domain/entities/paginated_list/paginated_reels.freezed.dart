// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_reels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedReels _$PaginatedReelsFromJson(Map<String, dynamic> json) {
  return _PaginatedReels.fromJson(json);
}

/// @nodoc
mixin _$PaginatedReels {
  int get total => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<Article> get reelsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedReelsCopyWith<PaginatedReels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedReelsCopyWith<$Res> {
  factory $PaginatedReelsCopyWith(
          PaginatedReels value, $Res Function(PaginatedReels) then) =
      _$PaginatedReelsCopyWithImpl<$Res, PaginatedReels>;
  @useResult
  $Res call({int total, int currentPage, List<Article> reelsList});
}

/// @nodoc
class _$PaginatedReelsCopyWithImpl<$Res, $Val extends PaginatedReels>
    implements $PaginatedReelsCopyWith<$Res> {
  _$PaginatedReelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? currentPage = null,
    Object? reelsList = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      reelsList: null == reelsList
          ? _value.reelsList
          : reelsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedReelsCopyWith<$Res>
    implements $PaginatedReelsCopyWith<$Res> {
  factory _$$_PaginatedReelsCopyWith(
          _$_PaginatedReels value, $Res Function(_$_PaginatedReels) then) =
      __$$_PaginatedReelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int currentPage, List<Article> reelsList});
}

/// @nodoc
class __$$_PaginatedReelsCopyWithImpl<$Res>
    extends _$PaginatedReelsCopyWithImpl<$Res, _$_PaginatedReels>
    implements _$$_PaginatedReelsCopyWith<$Res> {
  __$$_PaginatedReelsCopyWithImpl(
      _$_PaginatedReels _value, $Res Function(_$_PaginatedReels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? currentPage = null,
    Object? reelsList = null,
  }) {
    return _then(_$_PaginatedReels(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      reelsList: null == reelsList
          ? _value._reelsList
          : reelsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedReels implements _PaginatedReels {
  const _$_PaginatedReels(
      {this.total = 0,
      this.currentPage = 1,
      final List<Article> reelsList = const []})
      : _reelsList = reelsList;

  factory _$_PaginatedReels.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedReelsFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int currentPage;
  final List<Article> _reelsList;
  @override
  @JsonKey()
  List<Article> get reelsList {
    if (_reelsList is EqualUnmodifiableListView) return _reelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reelsList);
  }

  @override
  String toString() {
    return 'PaginatedReels(total: $total, currentPage: $currentPage, reelsList: $reelsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedReels &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._reelsList, _reelsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, currentPage,
      const DeepCollectionEquality().hash(_reelsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedReelsCopyWith<_$_PaginatedReels> get copyWith =>
      __$$_PaginatedReelsCopyWithImpl<_$_PaginatedReels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedReelsToJson(
      this,
    );
  }
}

abstract class _PaginatedReels implements PaginatedReels {
  const factory _PaginatedReels(
      {final int total,
      final int currentPage,
      final List<Article> reelsList}) = _$_PaginatedReels;

  factory _PaginatedReels.fromJson(Map<String, dynamic> json) =
      _$_PaginatedReels.fromJson;

  @override
  int get total;
  @override
  int get currentPage;
  @override
  List<Article> get reelsList;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedReelsCopyWith<_$_PaginatedReels> get copyWith =>
      throw _privateConstructorUsedError;
}
