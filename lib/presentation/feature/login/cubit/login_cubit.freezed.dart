// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isLoggingIn => throw _privateConstructorUsedError;
  bool get loggedInSuccessfully => throw _privateConstructorUsedError;
  ResponseError<dynamic>? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      bool isLoggingIn,
      bool loggedInSuccessfully,
      ResponseError<dynamic>? error});

  $EmailCopyWith<$Res> get email;
  $PasswordCopyWith<$Res> get password;
  $ResponseErrorCopyWith<dynamic, $Res>? get error;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isLoggingIn = null,
    Object? loggedInSuccessfully = null,
    Object? error = freezed,
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
      isLoggingIn: null == isLoggingIn
          ? _value.isLoggingIn
          : isLoggingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedInSuccessfully: null == loggedInSuccessfully
          ? _value.loggedInSuccessfully
          : loggedInSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>?,
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
  $ResponseErrorCopyWith<dynamic, $Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ResponseErrorCopyWith<dynamic, $Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      bool isLoggingIn,
      bool loggedInSuccessfully,
      ResponseError<dynamic>? error});

  @override
  $EmailCopyWith<$Res> get email;
  @override
  $PasswordCopyWith<$Res> get password;
  @override
  $ResponseErrorCopyWith<dynamic, $Res>? get error;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isLoggingIn = null,
    Object? loggedInSuccessfully = null,
    Object? error = freezed,
  }) {
    return _then(_$_LoginState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isLoggingIn: null == isLoggingIn
          ? _value.isLoggingIn
          : isLoggingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedInSuccessfully: null == loggedInSuccessfully
          ? _value.loggedInSuccessfully
          : loggedInSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_LoginState extends _LoginState {
  _$_LoginState(
      {required this.email,
      required this.password,
      this.isLoggingIn = false,
      this.loggedInSuccessfully = false,
      this.error})
      : super._();

  @override
  final Email email;
  @override
  final Password password;
  @override
  @JsonKey()
  final bool isLoggingIn;
  @override
  @JsonKey()
  final bool loggedInSuccessfully;
  @override
  final ResponseError<dynamic>? error;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, isLoggingIn: $isLoggingIn, loggedInSuccessfully: $loggedInSuccessfully, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoggingIn, isLoggingIn) ||
                other.isLoggingIn == isLoggingIn) &&
            (identical(other.loggedInSuccessfully, loggedInSuccessfully) ||
                other.loggedInSuccessfully == loggedInSuccessfully) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, isLoggingIn, loggedInSuccessfully, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  factory _LoginState(
      {required final Email email,
      required final Password password,
      final bool isLoggingIn,
      final bool loggedInSuccessfully,
      final ResponseError<dynamic>? error}) = _$_LoginState;
  _LoginState._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  bool get isLoggingIn;
  @override
  bool get loggedInSuccessfully;
  @override
  ResponseError<dynamic>? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
