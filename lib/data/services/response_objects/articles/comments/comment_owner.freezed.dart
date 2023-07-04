// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentOwner _$CommentOwnerFromJson(Map<String, dynamic> json) {
  return _CommentOwner.fromJson(json);
}

/// @nodoc
mixin _$CommentOwner {
  String get username => throw _privateConstructorUsedError;
  String get preferred_username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentOwnerCopyWith<CommentOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentOwnerCopyWith<$Res> {
  factory $CommentOwnerCopyWith(
          CommentOwner value, $Res Function(CommentOwner) then) =
      _$CommentOwnerCopyWithImpl<$Res, CommentOwner>;
  @useResult
  $Res call(
      {String username, String preferred_username, String? avatar, String id});
}

/// @nodoc
class _$CommentOwnerCopyWithImpl<$Res, $Val extends CommentOwner>
    implements $CommentOwnerCopyWith<$Res> {
  _$CommentOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? preferred_username = null,
    Object? avatar = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      preferred_username: null == preferred_username
          ? _value.preferred_username
          : preferred_username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentOwnerCopyWith<$Res>
    implements $CommentOwnerCopyWith<$Res> {
  factory _$$_CommentOwnerCopyWith(
          _$_CommentOwner value, $Res Function(_$_CommentOwner) then) =
      __$$_CommentOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username, String preferred_username, String? avatar, String id});
}

/// @nodoc
class __$$_CommentOwnerCopyWithImpl<$Res>
    extends _$CommentOwnerCopyWithImpl<$Res, _$_CommentOwner>
    implements _$$_CommentOwnerCopyWith<$Res> {
  __$$_CommentOwnerCopyWithImpl(
      _$_CommentOwner _value, $Res Function(_$_CommentOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? preferred_username = null,
    Object? avatar = freezed,
    Object? id = null,
  }) {
    return _then(_$_CommentOwner(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      preferred_username: null == preferred_username
          ? _value.preferred_username
          : preferred_username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentOwner extends _CommentOwner {
  const _$_CommentOwner(
      {required this.username,
      required this.preferred_username,
      required this.avatar,
      required this.id})
      : super._();

  factory _$_CommentOwner.fromJson(Map<String, dynamic> json) =>
      _$$_CommentOwnerFromJson(json);

  @override
  final String username;
  @override
  final String preferred_username;
  @override
  final String? avatar;
  @override
  final String id;

  @override
  String toString() {
    return 'CommentOwner(username: $username, preferred_username: $preferred_username, avatar: $avatar, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentOwner &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.preferred_username, preferred_username) ||
                other.preferred_username == preferred_username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, preferred_username, avatar, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentOwnerCopyWith<_$_CommentOwner> get copyWith =>
      __$$_CommentOwnerCopyWithImpl<_$_CommentOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentOwnerToJson(
      this,
    );
  }
}

abstract class _CommentOwner extends CommentOwner {
  const factory _CommentOwner(
      {required final String username,
      required final String preferred_username,
      required final String? avatar,
      required final String id}) = _$_CommentOwner;
  const _CommentOwner._() : super._();

  factory _CommentOwner.fromJson(Map<String, dynamic> json) =
      _$_CommentOwner.fromJson;

  @override
  String get username;
  @override
  String get preferred_username;
  @override
  String? get avatar;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CommentOwnerCopyWith<_$_CommentOwner> get copyWith =>
      throw _privateConstructorUsedError;
}
