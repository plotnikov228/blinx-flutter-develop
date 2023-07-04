// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_loop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReelsLoopState {
  bool get isAutoLoop => throw _privateConstructorUsedError;
  bool get onMute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReelsLoopStateCopyWith<ReelsLoopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsLoopStateCopyWith<$Res> {
  factory $ReelsLoopStateCopyWith(
          ReelsLoopState value, $Res Function(ReelsLoopState) then) =
      _$ReelsLoopStateCopyWithImpl<$Res, ReelsLoopState>;
  @useResult
  $Res call({bool isAutoLoop, bool onMute});
}

/// @nodoc
class _$ReelsLoopStateCopyWithImpl<$Res, $Val extends ReelsLoopState>
    implements $ReelsLoopStateCopyWith<$Res> {
  _$ReelsLoopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoLoop = null,
    Object? onMute = null,
  }) {
    return _then(_value.copyWith(
      isAutoLoop: null == isAutoLoop
          ? _value.isAutoLoop
          : isAutoLoop // ignore: cast_nullable_to_non_nullable
              as bool,
      onMute: null == onMute
          ? _value.onMute
          : onMute // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReelsLoopStateCopyWith<$Res>
    implements $ReelsLoopStateCopyWith<$Res> {
  factory _$$_ReelsLoopStateCopyWith(
          _$_ReelsLoopState value, $Res Function(_$_ReelsLoopState) then) =
      __$$_ReelsLoopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAutoLoop, bool onMute});
}

/// @nodoc
class __$$_ReelsLoopStateCopyWithImpl<$Res>
    extends _$ReelsLoopStateCopyWithImpl<$Res, _$_ReelsLoopState>
    implements _$$_ReelsLoopStateCopyWith<$Res> {
  __$$_ReelsLoopStateCopyWithImpl(
      _$_ReelsLoopState _value, $Res Function(_$_ReelsLoopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoLoop = null,
    Object? onMute = null,
  }) {
    return _then(_$_ReelsLoopState(
      isAutoLoop: null == isAutoLoop
          ? _value.isAutoLoop
          : isAutoLoop // ignore: cast_nullable_to_non_nullable
              as bool,
      onMute: null == onMute
          ? _value.onMute
          : onMute // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReelsLoopState implements _ReelsLoopState {
  const _$_ReelsLoopState({required this.isAutoLoop, required this.onMute});

  @override
  final bool isAutoLoop;
  @override
  final bool onMute;

  @override
  String toString() {
    return 'ReelsLoopState(isAutoLoop: $isAutoLoop, onMute: $onMute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReelsLoopState &&
            (identical(other.isAutoLoop, isAutoLoop) ||
                other.isAutoLoop == isAutoLoop) &&
            (identical(other.onMute, onMute) || other.onMute == onMute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAutoLoop, onMute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReelsLoopStateCopyWith<_$_ReelsLoopState> get copyWith =>
      __$$_ReelsLoopStateCopyWithImpl<_$_ReelsLoopState>(this, _$identity);
}

abstract class _ReelsLoopState implements ReelsLoopState {
  const factory _ReelsLoopState(
      {required final bool isAutoLoop,
      required final bool onMute}) = _$_ReelsLoopState;

  @override
  bool get isAutoLoop;
  @override
  bool get onMute;
  @override
  @JsonKey(ignore: true)
  _$$_ReelsLoopStateCopyWith<_$_ReelsLoopState> get copyWith =>
      throw _privateConstructorUsedError;
}
