// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserResponse _$UpdateUserResponseFromJson(Map<String, dynamic> json) {
  return _UpdateUserResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserResponse {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  Avatar? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserResponseCopyWith<UpdateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserResponseCopyWith<$Res> {
  factory $UpdateUserResponseCopyWith(
          UpdateUserResponse value, $Res Function(UpdateUserResponse) then) =
      _$UpdateUserResponseCopyWithImpl<$Res, UpdateUserResponse>;
  @useResult
  $Res call(
      {int id, String email, String? name, String username, Avatar? avatar});

  $AvatarCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$UpdateUserResponseCopyWithImpl<$Res, $Val extends UpdateUserResponse>
    implements $UpdateUserResponseCopyWith<$Res> {
  _$UpdateUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = freezed,
    Object? username = null,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvatarCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateUserResponseCopyWith<$Res>
    implements $UpdateUserResponseCopyWith<$Res> {
  factory _$$_UpdateUserResponseCopyWith(_$_UpdateUserResponse value,
          $Res Function(_$_UpdateUserResponse) then) =
      __$$_UpdateUserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String email, String? name, String username, Avatar? avatar});

  @override
  $AvatarCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$_UpdateUserResponseCopyWithImpl<$Res>
    extends _$UpdateUserResponseCopyWithImpl<$Res, _$_UpdateUserResponse>
    implements _$$_UpdateUserResponseCopyWith<$Res> {
  __$$_UpdateUserResponseCopyWithImpl(
      _$_UpdateUserResponse _value, $Res Function(_$_UpdateUserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = freezed,
    Object? username = null,
    Object? avatar = freezed,
  }) {
    return _then(_$_UpdateUserResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserResponse implements _UpdateUserResponse {
  const _$_UpdateUserResponse(
      {required this.id,
      required this.email,
      required this.name,
      required this.username,
      required this.avatar});

  factory _$_UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserResponseFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String? name;
  @override
  final String username;
  @override
  final Avatar? avatar;

  @override
  String toString() {
    return 'UpdateUserResponse(id: $id, email: $email, name: $name, username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, name, username, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserResponseCopyWith<_$_UpdateUserResponse> get copyWith =>
      __$$_UpdateUserResponseCopyWithImpl<_$_UpdateUserResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserResponseToJson(
      this,
    );
  }
}

abstract class _UpdateUserResponse implements UpdateUserResponse {
  const factory _UpdateUserResponse(
      {required final int id,
      required final String email,
      required final String? name,
      required final String username,
      required final Avatar? avatar}) = _$_UpdateUserResponse;

  factory _UpdateUserResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserResponse.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String? get name;
  @override
  String get username;
  @override
  Avatar? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserResponseCopyWith<_$_UpdateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
