// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserRequestBody _$UpdateUserRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserRequestBodyy.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserRequestBody {
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get currentPassword => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserRequestBodyCopyWith<UpdateUserRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserRequestBodyCopyWith<$Res> {
  factory $UpdateUserRequestBodyCopyWith(UpdateUserRequestBody value,
          $Res Function(UpdateUserRequestBody) then) =
      _$UpdateUserRequestBodyCopyWithImpl<$Res, UpdateUserRequestBody>;
  @useResult
  $Res call(
      {String? name,
      String? username,
      String? currentPassword,
      String? newPassword});
}

/// @nodoc
class _$UpdateUserRequestBodyCopyWithImpl<$Res,
        $Val extends UpdateUserRequestBody>
    implements $UpdateUserRequestBodyCopyWith<$Res> {
  _$UpdateUserRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserRequestBodyyCopyWith<$Res>
    implements $UpdateUserRequestBodyCopyWith<$Res> {
  factory _$$_UpdateUserRequestBodyyCopyWith(_$_UpdateUserRequestBodyy value,
          $Res Function(_$_UpdateUserRequestBodyy) then) =
      __$$_UpdateUserRequestBodyyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? username,
      String? currentPassword,
      String? newPassword});
}

/// @nodoc
class __$$_UpdateUserRequestBodyyCopyWithImpl<$Res>
    extends _$UpdateUserRequestBodyCopyWithImpl<$Res, _$_UpdateUserRequestBodyy>
    implements _$$_UpdateUserRequestBodyyCopyWith<$Res> {
  __$$_UpdateUserRequestBodyyCopyWithImpl(_$_UpdateUserRequestBodyy _value,
      $Res Function(_$_UpdateUserRequestBodyy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_UpdateUserRequestBodyy(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserRequestBodyy implements _UpdateUserRequestBodyy {
  _$_UpdateUserRequestBodyy(
      {this.name = null,
      this.username = null,
      this.currentPassword = null,
      this.newPassword = null});

  factory _$_UpdateUserRequestBodyy.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserRequestBodyyFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? username;
  @override
  @JsonKey()
  final String? currentPassword;
  @override
  @JsonKey()
  final String? newPassword;

  @override
  String toString() {
    return 'UpdateUserRequestBody(name: $name, username: $username, currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserRequestBodyy &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, username, currentPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserRequestBodyyCopyWith<_$_UpdateUserRequestBodyy> get copyWith =>
      __$$_UpdateUserRequestBodyyCopyWithImpl<_$_UpdateUserRequestBodyy>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserRequestBodyyToJson(
      this,
    );
  }
}

abstract class _UpdateUserRequestBodyy implements UpdateUserRequestBody {
  factory _UpdateUserRequestBodyy(
      {final String? name,
      final String? username,
      final String? currentPassword,
      final String? newPassword}) = _$_UpdateUserRequestBodyy;

  factory _UpdateUserRequestBodyy.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserRequestBodyy.fromJson;

  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get currentPassword;
  @override
  String? get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserRequestBodyyCopyWith<_$_UpdateUserRequestBodyy> get copyWith =>
      throw _privateConstructorUsedError;
}
