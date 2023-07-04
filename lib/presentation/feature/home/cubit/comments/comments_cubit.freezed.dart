// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<CommentsResponse> get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsStateCopyWith<CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res, CommentsState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<CommentsResponse> comments});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res, $Val extends CommentsState>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsResponse>,
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
abstract class _$$_CommentsStateCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory _$$_CommentsStateCopyWith(
          _$_CommentsState value, $Res Function(_$_CommentsState) then) =
      __$$_CommentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<CommentsResponse> comments});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_CommentsStateCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res, _$_CommentsState>
    implements _$$_CommentsStateCopyWith<$Res> {
  __$$_CommentsStateCopyWithImpl(
      _$_CommentsState _value, $Res Function(_$_CommentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? comments = null,
  }) {
    return _then(_$_CommentsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsResponse>,
    ));
  }
}

/// @nodoc

class _$_CommentsState extends _CommentsState {
  const _$_CommentsState(
      {this.status = const BaseStatus.initial(),
      final List<CommentsResponse> comments = const []})
      : _comments = comments,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<CommentsResponse> _comments;
  @override
  @JsonKey()
  List<CommentsResponse> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentsState(status: $status, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentsStateCopyWith<_$_CommentsState> get copyWith =>
      __$$_CommentsStateCopyWithImpl<_$_CommentsState>(this, _$identity);
}

abstract class _CommentsState extends CommentsState {
  const factory _CommentsState(
      {final BaseStatus<dynamic> status,
      final List<CommentsResponse> comments}) = _$_CommentsState;
  const _CommentsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<CommentsResponse> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsStateCopyWith<_$_CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
