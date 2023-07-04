// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_avatars_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveAvatarsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveAvatarsStateCopyWith<SaveAvatarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAvatarsStateCopyWith<$Res> {
  factory $SaveAvatarsStateCopyWith(
          SaveAvatarsState value, $Res Function(SaveAvatarsState) then) =
      _$SaveAvatarsStateCopyWithImpl<$Res, SaveAvatarsState>;
  @useResult
  $Res call({BaseStatus<dynamic> status});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$SaveAvatarsStateCopyWithImpl<$Res, $Val extends SaveAvatarsState>
    implements $SaveAvatarsStateCopyWith<$Res> {
  _$SaveAvatarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
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
abstract class _$$_SaveAvatarsStateCopyWith<$Res>
    implements $SaveAvatarsStateCopyWith<$Res> {
  factory _$$_SaveAvatarsStateCopyWith(
          _$_SaveAvatarsState value, $Res Function(_$_SaveAvatarsState) then) =
      __$$_SaveAvatarsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_SaveAvatarsStateCopyWithImpl<$Res>
    extends _$SaveAvatarsStateCopyWithImpl<$Res, _$_SaveAvatarsState>
    implements _$$_SaveAvatarsStateCopyWith<$Res> {
  __$$_SaveAvatarsStateCopyWithImpl(
      _$_SaveAvatarsState _value, $Res Function(_$_SaveAvatarsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_SaveAvatarsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_SaveAvatarsState extends _SaveAvatarsState {
  _$_SaveAvatarsState({this.status = const BaseStatus.initial()}) : super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;

  @override
  String toString() {
    return 'SaveAvatarsState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveAvatarsState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveAvatarsStateCopyWith<_$_SaveAvatarsState> get copyWith =>
      __$$_SaveAvatarsStateCopyWithImpl<_$_SaveAvatarsState>(this, _$identity);
}

abstract class _SaveAvatarsState extends SaveAvatarsState {
  factory _SaveAvatarsState({final BaseStatus<dynamic> status}) =
      _$_SaveAvatarsState;
  _SaveAvatarsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$$_SaveAvatarsStateCopyWith<_$_SaveAvatarsState> get copyWith =>
      throw _privateConstructorUsedError;
}
