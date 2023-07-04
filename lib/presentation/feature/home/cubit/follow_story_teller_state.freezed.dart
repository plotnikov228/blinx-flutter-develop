// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_story_teller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowStoryTellerState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowStoryTellerStateCopyWith<FollowStoryTellerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowStoryTellerStateCopyWith<$Res> {
  factory $FollowStoryTellerStateCopyWith(FollowStoryTellerState value,
          $Res Function(FollowStoryTellerState) then) =
      _$FollowStoryTellerStateCopyWithImpl<$Res, FollowStoryTellerState>;
  @useResult
  $Res call({BaseStatus<dynamic> status});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$FollowStoryTellerStateCopyWithImpl<$Res,
        $Val extends FollowStoryTellerState>
    implements $FollowStoryTellerStateCopyWith<$Res> {
  _$FollowStoryTellerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_FollowStoryTellerStateCopyWith<$Res>
    implements $FollowStoryTellerStateCopyWith<$Res> {
  factory _$$_FollowStoryTellerStateCopyWith(_$_FollowStoryTellerState value,
          $Res Function(_$_FollowStoryTellerState) then) =
      __$$_FollowStoryTellerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_FollowStoryTellerStateCopyWithImpl<$Res>
    extends _$FollowStoryTellerStateCopyWithImpl<$Res,
        _$_FollowStoryTellerState>
    implements _$$_FollowStoryTellerStateCopyWith<$Res> {
  __$$_FollowStoryTellerStateCopyWithImpl(_$_FollowStoryTellerState _value,
      $Res Function(_$_FollowStoryTellerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_FollowStoryTellerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_FollowStoryTellerState extends _FollowStoryTellerState {
  _$_FollowStoryTellerState({this.status = const BaseStatus.success()})
      : super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;

  @override
  String toString() {
    return 'FollowStoryTellerState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowStoryTellerState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowStoryTellerStateCopyWith<_$_FollowStoryTellerState> get copyWith =>
      __$$_FollowStoryTellerStateCopyWithImpl<_$_FollowStoryTellerState>(
          this, _$identity);
}

abstract class _FollowStoryTellerState extends FollowStoryTellerState {
  factory _FollowStoryTellerState({final BaseStatus<dynamic> status}) =
      _$_FollowStoryTellerState;
  _FollowStoryTellerState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$$_FollowStoryTellerStateCopyWith<_$_FollowStoryTellerState> get copyWith =>
      throw _privateConstructorUsedError;
}
