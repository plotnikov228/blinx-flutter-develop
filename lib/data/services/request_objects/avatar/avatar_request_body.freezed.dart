// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvatarRequestBody _$AvatarRequestBodyFromJson(Map<String, dynamic> json) {
  return _AvatarRequestBody.fromJson(json);
}

/// @nodoc
mixin _$AvatarRequestBody {
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarRequestBodyCopyWith<AvatarRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarRequestBodyCopyWith<$Res> {
  factory $AvatarRequestBodyCopyWith(
          AvatarRequestBody value, $Res Function(AvatarRequestBody) then) =
      _$AvatarRequestBodyCopyWithImpl<$Res, AvatarRequestBody>;
  @useResult
  $Res call({String avatar});
}

/// @nodoc
class _$AvatarRequestBodyCopyWithImpl<$Res, $Val extends AvatarRequestBody>
    implements $AvatarRequestBodyCopyWith<$Res> {
  _$AvatarRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvatarRequestBodyCopyWith<$Res>
    implements $AvatarRequestBodyCopyWith<$Res> {
  factory _$$_AvatarRequestBodyCopyWith(_$_AvatarRequestBody value,
          $Res Function(_$_AvatarRequestBody) then) =
      __$$_AvatarRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatar});
}

/// @nodoc
class __$$_AvatarRequestBodyCopyWithImpl<$Res>
    extends _$AvatarRequestBodyCopyWithImpl<$Res, _$_AvatarRequestBody>
    implements _$$_AvatarRequestBodyCopyWith<$Res> {
  __$$_AvatarRequestBodyCopyWithImpl(
      _$_AvatarRequestBody _value, $Res Function(_$_AvatarRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$_AvatarRequestBody(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvatarRequestBody implements _AvatarRequestBody {
  const _$_AvatarRequestBody({required this.avatar});

  factory _$_AvatarRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_AvatarRequestBodyFromJson(json);

  @override
  final String avatar;

  @override
  String toString() {
    return 'AvatarRequestBody(avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvatarRequestBody &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvatarRequestBodyCopyWith<_$_AvatarRequestBody> get copyWith =>
      __$$_AvatarRequestBodyCopyWithImpl<_$_AvatarRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvatarRequestBodyToJson(
      this,
    );
  }
}

abstract class _AvatarRequestBody implements AvatarRequestBody {
  const factory _AvatarRequestBody({required final String avatar}) =
      _$_AvatarRequestBody;

  factory _AvatarRequestBody.fromJson(Map<String, dynamic> json) =
      _$_AvatarRequestBody.fromJson;

  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_AvatarRequestBodyCopyWith<_$_AvatarRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
