// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoreState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  Content? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoreStateCopyWith<MoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreStateCopyWith<$Res> {
  factory $MoreStateCopyWith(MoreState value, $Res Function(MoreState) then) =
      _$MoreStateCopyWithImpl<$Res, MoreState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, Content? content});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$MoreStateCopyWithImpl<$Res, $Val extends MoreState>
    implements $MoreStateCopyWith<$Res> {
  _$MoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
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
  $ContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoreStateCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory _$$_MoreStateCopyWith(
          _$_MoreState value, $Res Function(_$_MoreState) then) =
      __$$_MoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, Content? content});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$_MoreStateCopyWithImpl<$Res>
    extends _$MoreStateCopyWithImpl<$Res, _$_MoreState>
    implements _$$_MoreStateCopyWith<$Res> {
  __$$_MoreStateCopyWithImpl(
      _$_MoreState _value, $Res Function(_$_MoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
  }) {
    return _then(_$_MoreState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
    ));
  }
}

/// @nodoc

class _$_MoreState extends _MoreState {
  const _$_MoreState({required this.status, this.content}) : super._();

  @override
  final BaseStatus<dynamic> status;
  @override
  final Content? content;

  @override
  String toString() {
    return 'MoreState(status: $status, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoreState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoreStateCopyWith<_$_MoreState> get copyWith =>
      __$$_MoreStateCopyWithImpl<_$_MoreState>(this, _$identity);
}

abstract class _MoreState extends MoreState {
  const factory _MoreState(
      {required final BaseStatus<dynamic> status,
      final Content? content}) = _$_MoreState;
  const _MoreState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  Content? get content;
  @override
  @JsonKey(ignore: true)
  _$$_MoreStateCopyWith<_$_MoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
