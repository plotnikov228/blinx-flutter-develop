// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReelsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Article> get reelsList => throw _privateConstructorUsedError;
  int get currentRowIndex => throw _privateConstructorUsedError;
  int get currentColumnIndex => throw _privateConstructorUsedError;
  List<List<PaginatedReels?>?> get matrix => throw _privateConstructorUsedError;
  List<List<List<ReelsRowType>?>?> get reelsRowMatrix => throw _privateConstructorUsedError;
  List<List<BetterVideoPlayerController?>?> get vpControllerMatrix => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  int get total => throw _privateConstructorUsedError;
  Article? get selectedArticle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReelsStateCopyWith<ReelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsStateCopyWith<$Res> {
  factory $ReelsStateCopyWith(
          ReelsState value, $Res Function(ReelsState) then) =
      _$ReelsStateCopyWithImpl<$Res, ReelsState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<Article> reelsList,
        int currentRowIndex,
        int currentColumnIndex,
        List<List<PaginatedReels?>?> matrix,
        List<List<List<ReelsRowType>?>?> reelsRowMatrix,
        List<List<BetterVideoPlayerController?>?> vpControllerMatrix,
        int currentPage,
      int total,
      Article? selectedArticle});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $ArticleCopyWith<$Res>? get selectedArticle;
}

/// @nodoc
class _$ReelsStateCopyWithImpl<$Res, $Val extends ReelsState>
    implements $ReelsStateCopyWith<$Res> {
  _$ReelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? reelsList = null,
    Object? currentRowIndex,
    Object? currentColumnIndex,
    Object? vpControllerMatrix = null,
    Object? matrix,
    Object? reelsRowMatrix,
    Object? currentPage = null,
    Object? total = null,
    Object? selectedArticle = freezed,
  }) {
    return _then(_value.copyWith(

      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      reelsList: null == reelsList
          ? _value.reelsList
          : reelsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      currentRowIndex: null == currentRowIndex
    ? _value.currentRowIndex
        : currentColumnIndex // ignore: cast_nullable_to_non_nullable
    as int,
      currentColumnIndex:null == currentColumnIndex
          ? _value.currentColumnIndex
          : currentColumnIndex // ignore: cast_nullable_to_non_nullable
      as int,
      matrix: null == matrix
    ? _value.matrix
        : matrix // ignore: cast_nullable_to_non_nullable
      as List<List<PaginatedReels?>?>,
      reelsRowMatrix: null == reelsRowMatrix
          ? _value.reelsRowMatrix
          : reelsRowMatrix // ignore: cast_nullable_to_non_nullable
      as List<List<List<ReelsRowType>?>?>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      vpControllerMatrix: null == vpControllerMatrix
          ? _value.vpControllerMatrix
          : vpControllerMatrix // ignore: cast_n
      as List<List<BetterVideoPlayerController?>?>,
      selectedArticle: freezed == selectedArticle
          ? _value.selectedArticle
          : selectedArticle // ignore: cast_nullable_to_non_nullable
              as Article?,
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
  $ArticleCopyWith<$Res>? get selectedArticle {
    if (_value.selectedArticle == null) {
      return null;
    }

    return $ArticleCopyWith<$Res>(_value.selectedArticle!, (value) {
      return _then(_value.copyWith(selectedArticle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReelsStateCopyWith<$Res>
    implements $ReelsStateCopyWith<$Res> {
  factory _$$_ReelsStateCopyWith(
          _$_ReelsState value, $Res Function(_$_ReelsState) then) =
      __$$_ReelsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<Article> reelsList,
        int currentRowIndex,
        int currentColumnIndex,
        List<List<PaginatedReels?>?> matrix,
        List<List<List<ReelsRowType>?>?> reelsRowMatrix,
        List<List<BetterVideoPlayerController?>?> vpControllerMatrix,
        int currentPage,
      int total,
      Article? selectedArticle});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $ArticleCopyWith<$Res>? get selectedArticle;
}

/// @nodoc
class __$$_ReelsStateCopyWithImpl<$Res>
    extends _$ReelsStateCopyWithImpl<$Res, _$_ReelsState>
    implements _$$_ReelsStateCopyWith<$Res> {
  __$$_ReelsStateCopyWithImpl(
      _$_ReelsState _value, $Res Function(_$_ReelsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? reelsList = null,
    Object? currentPage = null,
    Object? currentRowIndex,
    Object? currentColumnIndex,
    Object? matrix,
    Object? reelsRowMatrix,
    Object? vpControllerMatrix,
    Object? total = null,
    Object? selectedArticle = freezed,
  }) {
    return _then(_$_ReelsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      currentRowIndex: null == currentRowIndex
          ? _value.currentRowIndex
          : currentColumnIndex // ignore: cast_nullable_to_non_nullable
      as int,
      currentColumnIndex:null == currentColumnIndex
          ? _value.currentColumnIndex
          : currentColumnIndex // ignore: cast_nullable_to_non_nullable
      as int,
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
      as List<List<PaginatedReels?>?>,
      reelsRowMatrix: null == reelsRowMatrix
          ? _value.reelsRowMatrix
          : reelsRowMatrix // ignore: cast_nullable_to_non_nullable
      as List<List<List<ReelsRowType>?>?>,


      vpControllerMatrix: null == vpControllerMatrix
          ? _value.vpControllerMatrix
          : vpControllerMatrix
      as List<List<BetterVideoPlayerController?>?>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      selectedArticle: freezed == selectedArticle
          ? _value.selectedArticle
          : selectedArticle // ignore: cast_nullable_to_non_nullable
              as Article?,
    ));
  }
}

/// @nodoc

class _$_ReelsState extends _ReelsState {
  const _$_ReelsState(
      {this.status = const BaseStatus.initial(),
      final List<Article> reelsList = const [],
      this.currentPage = 0,
        this.currentRowIndex = 1,
        this.currentColumnIndex = 1,
        this.vpControllerMatrix = const [],
        this.matrix = const [[]],
        this.reelsRowMatrix = const [[[]]],
      this.total = 0,
      this.selectedArticle = null})
      : _reelsList = reelsList,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Article> _reelsList;
  @override
  @JsonKey()
  List<Article> get reelsList {
    if (_reelsList is EqualUnmodifiableListView) return _reelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reelsList);
  }
  @override
  @JsonKey()
  final int currentRowIndex;
  @override
  @JsonKey()
  final int currentColumnIndex;
  @override
  @JsonKey()
  final List<List<PaginatedReels?>?> matrix;
  @override
  @JsonKey()
  final List<List<List<ReelsRowType>?>?> reelsRowMatrix;
  @override
  @JsonKey()
  final List<List<BetterVideoPlayerController?>?> vpControllerMatrix;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final Article? selectedArticle;

  @override
  String toString() {
    return 'ReelsState(status: $status, reelsList: $reelsList, currentPage: $currentPage, total: $total, selectedArticle: $selectedArticle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReelsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._reelsList, _reelsList) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.selectedArticle, selectedArticle) ||
                other.selectedArticle == selectedArticle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_reelsList),
      currentPage,
      total,
      selectedArticle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReelsStateCopyWith<_$_ReelsState> get copyWith =>
      __$$_ReelsStateCopyWithImpl<_$_ReelsState>(this, _$identity);
}

abstract class _ReelsState extends ReelsState {
  const factory _ReelsState(
      {final BaseStatus<dynamic> status,
      final List<Article> reelsList,
      final int currentPage,
        final int currentRowIndex,
        final int currentColumnIndex,
        final List<List<BetterVideoPlayerController?>?> vpControllerMatrix,
        final List<List<PaginatedReels?>?> matrix,
        final List<List<List<ReelsRowType>?>?> reelsRowMatrix,

        final int total,
      final Article? selectedArticle}) = _$_ReelsState;
  const _ReelsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Article> get reelsList;
  @override
  List<List<BetterVideoPlayerController?>?> get vpControllerMatrix;
  @override
  int get currentPage;
  @override
   int get currentRowIndex;
  @override
   int get currentColumnIndex;
  @override
   List<List<PaginatedReels?>?> get matrix;
  @override
  List<List<List<ReelsRowType>?>?> get reelsRowMatrix;
  @override
  int get total;
  @override
  Article? get selectedArticle;
  @override
  @JsonKey(ignore: true)
  _$$_ReelsStateCopyWith<_$_ReelsState> get copyWith =>
      throw _privateConstructorUsedError;
}
