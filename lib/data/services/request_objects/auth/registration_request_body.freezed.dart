// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationRequestBody _$RegistrationRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestBody.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequestBody {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRequestBodyCopyWith<RegistrationRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestBodyCopyWith<$Res> {
  factory $RegistrationRequestBodyCopyWith(RegistrationRequestBody value,
          $Res Function(RegistrationRequestBody) then) =
      _$RegistrationRequestBodyCopyWithImpl<$Res, RegistrationRequestBody>;
  @useResult
  $Res call({String username, String email, String password});
}

/// @nodoc
class _$RegistrationRequestBodyCopyWithImpl<$Res,
        $Val extends RegistrationRequestBody>
    implements $RegistrationRequestBodyCopyWith<$Res> {
  _$RegistrationRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_RegistrationRequestBodyCopyWith<$Res>
    implements $RegistrationRequestBodyCopyWith<$Res> {
  factory _$$_RegistrationRequestBodyCopyWith(_$_RegistrationRequestBody value,
          $Res Function(_$_RegistrationRequestBody) then) =
      __$$_RegistrationRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String email, String password});
}

/// @nodoc
class __$$_RegistrationRequestBodyCopyWithImpl<$Res>
    extends _$RegistrationRequestBodyCopyWithImpl<$Res,
        _$_RegistrationRequestBody>
    implements _$$_RegistrationRequestBodyCopyWith<$Res> {
  __$$_RegistrationRequestBodyCopyWithImpl(_$_RegistrationRequestBody _value,
      $Res Function(_$_RegistrationRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_RegistrationRequestBody(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_RegistrationRequestBody implements _RegistrationRequestBody {
  _$_RegistrationRequestBody(
      {required this.username, required this.email, required this.password});

  factory _$_RegistrationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationRequestBodyFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationRequestBody(username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationRequestBody &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationRequestBodyCopyWith<_$_RegistrationRequestBody>
      get copyWith =>
          __$$_RegistrationRequestBodyCopyWithImpl<_$_RegistrationRequestBody>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationRequestBodyToJson(
      this,
    );
  }
}

abstract class _RegistrationRequestBody implements RegistrationRequestBody {
  factory _RegistrationRequestBody(
      {required final String username,
      required final String email,
      required final String password}) = _$_RegistrationRequestBody;

  factory _RegistrationRequestBody.fromJson(Map<String, dynamic> json) =
      _$_RegistrationRequestBody.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationRequestBodyCopyWith<_$_RegistrationRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}
