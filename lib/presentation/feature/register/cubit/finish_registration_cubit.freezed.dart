// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_registration_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FinishRegistrationState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  bool get showPasswordError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinishRegistrationStateCopyWith<FinishRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishRegistrationStateCopyWith<$Res> {
  factory $FinishRegistrationStateCopyWith(FinishRegistrationState value,
          $Res Function(FinishRegistrationState) then) =
      _$FinishRegistrationStateCopyWithImpl<$Res, FinishRegistrationState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      Username username,
      BaseStatus<dynamic> status,
      bool showPasswordError});

  $EmailCopyWith<$Res> get email;
  $PasswordCopyWith<$Res> get password;
  $UsernameCopyWith<$Res> get username;
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$FinishRegistrationStateCopyWithImpl<$Res,
        $Val extends FinishRegistrationState>
    implements $FinishRegistrationStateCopyWith<$Res> {
  _$FinishRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? status = null,
    Object? showPasswordError = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      showPasswordError: null == showPasswordError
          ? _value.showPasswordError
          : showPasswordError // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UsernameCopyWith<$Res> get username {
    return $UsernameCopyWith<$Res>(_value.username, (value) {
      return _then(_value.copyWith(username: value) as $Val);
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
abstract class _$$_FinishRegistrationStateCopyWith<$Res>
    implements $FinishRegistrationStateCopyWith<$Res> {
  factory _$$_FinishRegistrationStateCopyWith(_$_FinishRegistrationState value,
          $Res Function(_$_FinishRegistrationState) then) =
      __$$_FinishRegistrationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      Username username,
      BaseStatus<dynamic> status,
      bool showPasswordError});

  @override
  $EmailCopyWith<$Res> get email;
  @override
  $PasswordCopyWith<$Res> get password;
  @override
  $UsernameCopyWith<$Res> get username;
  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_FinishRegistrationStateCopyWithImpl<$Res>
    extends _$FinishRegistrationStateCopyWithImpl<$Res,
        _$_FinishRegistrationState>
    implements _$$_FinishRegistrationStateCopyWith<$Res> {
  __$$_FinishRegistrationStateCopyWithImpl(_$_FinishRegistrationState _value,
      $Res Function(_$_FinishRegistrationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? status = null,
    Object? showPasswordError = null,
  }) {
    return _then(_$_FinishRegistrationState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      showPasswordError: null == showPasswordError
          ? _value.showPasswordError
          : showPasswordError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FinishRegistrationState extends _FinishRegistrationState {
  const _$_FinishRegistrationState(
      {required this.email,
      required this.password,
      required this.username,
      required this.status,
      required this.showPasswordError})
      : super._();

  @override
  final Email email;
  @override
  final Password password;
  @override
  final Username username;
  @override
  final BaseStatus<dynamic> status;
  @override
  final bool showPasswordError;

  @override
  String toString() {
    return 'FinishRegistrationState(email: $email, password: $password, username: $username, status: $status, showPasswordError: $showPasswordError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishRegistrationState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.showPasswordError, showPasswordError) ||
                other.showPasswordError == showPasswordError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, username, status, showPasswordError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinishRegistrationStateCopyWith<_$_FinishRegistrationState>
      get copyWith =>
          __$$_FinishRegistrationStateCopyWithImpl<_$_FinishRegistrationState>(
              this, _$identity);
}

abstract class _FinishRegistrationState extends FinishRegistrationState {
  const factory _FinishRegistrationState(
      {required final Email email,
      required final Password password,
      required final Username username,
      required final BaseStatus<dynamic> status,
      required final bool showPasswordError}) = _$_FinishRegistrationState;
  const _FinishRegistrationState._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  Username get username;
  @override
  BaseStatus<dynamic> get status;
  @override
  bool get showPasswordError;
  @override
  @JsonKey(ignore: true)
  _$$_FinishRegistrationStateCopyWith<_$_FinishRegistrationState>
      get copyWith => throw _privateConstructorUsedError;
}
