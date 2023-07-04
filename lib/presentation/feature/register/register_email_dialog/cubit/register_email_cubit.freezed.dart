// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEmailState {
  Email get email => throw _privateConstructorUsedError;
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEmailStateCopyWith<RegisterEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEmailStateCopyWith<$Res> {
  factory $RegisterEmailStateCopyWith(
          RegisterEmailState value, $Res Function(RegisterEmailState) then) =
      _$RegisterEmailStateCopyWithImpl<$Res, RegisterEmailState>;
  @useResult
  $Res call({Email email, BaseStatus<dynamic> status});

  $EmailCopyWith<$Res> get email;
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$RegisterEmailStateCopyWithImpl<$Res, $Val extends RegisterEmailState>
    implements $RegisterEmailStateCopyWith<$Res> {
  _$RegisterEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailCopyWith<$Res> get email {
    return $EmailCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
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
abstract class _$$_RegisterEmailStateCopyWith<$Res>
    implements $RegisterEmailStateCopyWith<$Res> {
  factory _$$_RegisterEmailStateCopyWith(_$_RegisterEmailState value,
          $Res Function(_$_RegisterEmailState) then) =
      __$$_RegisterEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, BaseStatus<dynamic> status});

  @override
  $EmailCopyWith<$Res> get email;
  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_RegisterEmailStateCopyWithImpl<$Res>
    extends _$RegisterEmailStateCopyWithImpl<$Res, _$_RegisterEmailState>
    implements _$$_RegisterEmailStateCopyWith<$Res> {
  __$$_RegisterEmailStateCopyWithImpl(
      _$_RegisterEmailState _value, $Res Function(_$_RegisterEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? status = null,
  }) {
    return _then(_$_RegisterEmailState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_RegisterEmailState implements _RegisterEmailState {
  const _$_RegisterEmailState({required this.email, required this.status});

  @override
  final Email email;
  @override
  final BaseStatus<dynamic> status;

  @override
  String toString() {
    return 'RegisterEmailState(email: $email, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterEmailState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterEmailStateCopyWith<_$_RegisterEmailState> get copyWith =>
      __$$_RegisterEmailStateCopyWithImpl<_$_RegisterEmailState>(
          this, _$identity);
}

abstract class _RegisterEmailState implements RegisterEmailState {
  const factory _RegisterEmailState(
      {required final Email email,
      required final BaseStatus<dynamic> status}) = _$_RegisterEmailState;

  @override
  Email get email;
  @override
  BaseStatus<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterEmailStateCopyWith<_$_RegisterEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
