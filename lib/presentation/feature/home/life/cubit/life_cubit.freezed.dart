// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LifeState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  Content? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LifeStateCopyWith<LifeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeStateCopyWith<$Res> {
  factory $LifeStateCopyWith(LifeState value, $Res Function(LifeState) then) =
      _$LifeStateCopyWithImpl<$Res, LifeState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, Content? content});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$LifeStateCopyWithImpl<$Res, $Val extends LifeState>
    implements $LifeStateCopyWith<$Res> {
  _$LifeStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_LifeStateCopyWith<$Res> implements $LifeStateCopyWith<$Res> {
  factory _$$_LifeStateCopyWith(
          _$_LifeState value, $Res Function(_$_LifeState) then) =
      __$$_LifeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, Content? content});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$_LifeStateCopyWithImpl<$Res>
    extends _$LifeStateCopyWithImpl<$Res, _$_LifeState>
    implements _$$_LifeStateCopyWith<$Res> {
  __$$_LifeStateCopyWithImpl(
      _$_LifeState _value, $Res Function(_$_LifeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
  }) {
    return _then(_$_LifeState(
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

class _$_LifeState extends _LifeState {
  const _$_LifeState({required this.status, this.content}) : super._();

  @override
  final BaseStatus<dynamic> status;
  @override
  final Content? content;

  @override
  String toString() {
    return 'LifeState(status: $status, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeStateCopyWith<_$_LifeState> get copyWith =>
      __$$_LifeStateCopyWithImpl<_$_LifeState>(this, _$identity);
}

abstract class _LifeState extends LifeState {
  const factory _LifeState(
      {required final BaseStatus<dynamic> status,
      final Content? content}) = _$_LifeState;
  const _LifeState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  Content? get content;
  @override
  @JsonKey(ignore: true)
  _$$_LifeStateCopyWith<_$_LifeState> get copyWith =>
      throw _privateConstructorUsedError;
}
