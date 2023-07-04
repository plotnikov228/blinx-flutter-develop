// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'storyteller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Storytellers _$StorytellersFromJson(Map<String, dynamic> json) {
  return _Storytellers.fromJson(json);
}

/// @nodoc
mixin _$Storytellers {
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Avatar get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorytellersCopyWith<Storytellers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorytellersCopyWith<$Res> {
  factory $StorytellersCopyWith(
          Storytellers value, $Res Function(Storytellers) then) =
      _$StorytellersCopyWithImpl<$Res>;
  $Res call({String path, String name, Avatar avatar});

  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class _$StorytellersCopyWithImpl<$Res> implements $StorytellersCopyWith<$Res> {
  _$StorytellersCopyWithImpl(this._value, this._then);

  final Storytellers _value;
  // ignore: unused_field
  final $Res Function(Storytellers) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
    ));
  }

  @override
  $AvatarCopyWith<$Res> get avatar {
    return $AvatarCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc
abstract class _$$_StorytellersCopyWith<$Res>
    implements $StorytellersCopyWith<$Res> {
  factory _$$_StorytellersCopyWith(
          _$_Storytellers value, $Res Function(_$_Storytellers) then) =
      __$$_StorytellersCopyWithImpl<$Res>;
  @override
  $Res call({String path, String name, Avatar avatar});

  @override
  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$_StorytellersCopyWithImpl<$Res>
    extends _$StorytellersCopyWithImpl<$Res>
    implements _$$_StorytellersCopyWith<$Res> {
  __$$_StorytellersCopyWithImpl(
      _$_Storytellers _value, $Res Function(_$_Storytellers) _then)
      : super(_value, (v) => _then(v as _$_Storytellers));

  @override
  _$_Storytellers get _value => super._value as _$_Storytellers;

  @override
  $Res call({
    Object? path = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_Storytellers(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Storytellers implements _Storytellers {
  _$_Storytellers(
      {required this.path, required this.name, required this.avatar});

  factory _$_Storytellers.fromJson(Map<String, dynamic> json) =>
      _$$_StorytellersFromJson(json);

  @override
  final String path;
  @override
  final String name;
  @override
  final Avatar avatar;

  @override
  String toString() {
    return 'Storytellers(path: $path, name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Storytellers &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$$_StorytellersCopyWith<_$_Storytellers> get copyWith =>
      __$$_StorytellersCopyWithImpl<_$_Storytellers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorytellersToJson(
      this,
    );
  }
}

abstract class _Storytellers implements Storytellers {
  factory _Storytellers(
      {required final String path,
      required final String name,
      required final Avatar avatar}) = _$_Storytellers;

  factory _Storytellers.fromJson(Map<String, dynamic> json) =
      _$_Storytellers.fromJson;

  @override
  String get path;
  @override
  String get name;
  @override
  Avatar get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_StorytellersCopyWith<_$_Storytellers> get copyWith =>
      throw _privateConstructorUsedError;
}

Avatar _$AvatarFromJson(Map<String, dynamic> json) {
  return _Avatar.fromJson(json);
}

/// @nodoc
mixin _$Avatar {
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarCopyWith<Avatar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarCopyWith<$Res> {
  factory $AvatarCopyWith(Avatar value, $Res Function(Avatar) then) =
      _$AvatarCopyWithImpl<$Res>;
  $Res call({String original});
}

/// @nodoc
class _$AvatarCopyWithImpl<$Res> implements $AvatarCopyWith<$Res> {
  _$AvatarCopyWithImpl(this._value, this._then);

  final Avatar _value;
  // ignore: unused_field
  final $Res Function(Avatar) _then;

  @override
  $Res call({
    Object? original = freezed,
  }) {
    return _then(_value.copyWith(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AvatarCopyWith<$Res> implements $AvatarCopyWith<$Res> {
  factory _$$_AvatarCopyWith(_$_Avatar value, $Res Function(_$_Avatar) then) =
      __$$_AvatarCopyWithImpl<$Res>;
  @override
  $Res call({String original});
}

/// @nodoc
class __$$_AvatarCopyWithImpl<$Res> extends _$AvatarCopyWithImpl<$Res>
    implements _$$_AvatarCopyWith<$Res> {
  __$$_AvatarCopyWithImpl(_$_Avatar _value, $Res Function(_$_Avatar) _then)
      : super(_value, (v) => _then(v as _$_Avatar));

  @override
  _$_Avatar get _value => super._value as _$_Avatar;

  @override
  $Res call({
    Object? original = freezed,
  }) {
    return _then(_$_Avatar(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Avatar implements _Avatar {
  _$_Avatar({required this.original});

  factory _$_Avatar.fromJson(Map<String, dynamic> json) =>
      _$$_AvatarFromJson(json);

  @override
  final String original;

  @override
  String toString() {
    return 'Avatar(original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Avatar &&
            const DeepCollectionEquality().equals(other.original, original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(original));

  @JsonKey(ignore: true)
  @override
  _$$_AvatarCopyWith<_$_Avatar> get copyWith =>
      __$$_AvatarCopyWithImpl<_$_Avatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvatarToJson(
      this,
    );
  }
}

abstract class _Avatar implements Avatar {
  factory _Avatar({required final String original}) = _$_Avatar;

  factory _Avatar.fromJson(Map<String, dynamic> json) = _$_Avatar.fromJson;

  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$$_AvatarCopyWith<_$_Avatar> get copyWith =>
      throw _privateConstructorUsedError;
}
