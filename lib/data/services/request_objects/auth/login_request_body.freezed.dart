// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) {
  return _LoginRequestBody.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestBodyCopyWith<LoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestBodyCopyWith<$Res> {
  factory $LoginRequestBodyCopyWith(
          LoginRequestBody value, $Res Function(LoginRequestBody) then) =
      _$LoginRequestBodyCopyWithImpl<$Res, LoginRequestBody>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginRequestBodyCopyWithImpl<$Res, $Val extends LoginRequestBody>
    implements $LoginRequestBodyCopyWith<$Res> {
  _$LoginRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginRequestBodyCopyWith<$Res>
    implements $LoginRequestBodyCopyWith<$Res> {
  factory _$$_LoginRequestBodyCopyWith(
          _$_LoginRequestBody value, $Res Function(_$_LoginRequestBody) then) =
      __$$_LoginRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginRequestBodyCopyWithImpl<$Res>
    extends _$LoginRequestBodyCopyWithImpl<$Res, _$_LoginRequestBody>
    implements _$$_LoginRequestBodyCopyWith<$Res> {
  __$$_LoginRequestBodyCopyWithImpl(
      _$_LoginRequestBody _value, $Res Function(_$_LoginRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginRequestBody(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequestBody implements _LoginRequestBody {
  _$_LoginRequestBody({required this.email, required this.password});

  factory _$_LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestBodyFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequestBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestBodyCopyWith<_$_LoginRequestBody> get copyWith =>
      __$$_LoginRequestBodyCopyWithImpl<_$_LoginRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestBodyToJson(
      this,
    );
  }
}

abstract class _LoginRequestBody implements LoginRequestBody {
  factory _LoginRequestBody(
      {required final String email,
      required final String password}) = _$_LoginRequestBody;

  factory _LoginRequestBody.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestBody.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestBodyCopyWith<_$_LoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
