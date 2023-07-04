// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  dynamic Function() get onTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileItemCopyWith<ProfileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileItemCopyWith<$Res> {
  factory $ProfileItemCopyWith(
          ProfileItem value, $Res Function(ProfileItem) then) =
      _$ProfileItemCopyWithImpl<$Res, ProfileItem>;
  @useResult
  $Res call({String id, String name, String icon, dynamic Function() onTap});
}

/// @nodoc
class _$ProfileItemCopyWithImpl<$Res, $Val extends ProfileItem>
    implements $ProfileItemCopyWith<$Res> {
  _$ProfileItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? onTap = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileItemCopyWith<$Res>
    implements $ProfileItemCopyWith<$Res> {
  factory _$$_ProfileItemCopyWith(
          _$_ProfileItem value, $Res Function(_$_ProfileItem) then) =
      __$$_ProfileItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String icon, dynamic Function() onTap});
}

/// @nodoc
class __$$_ProfileItemCopyWithImpl<$Res>
    extends _$ProfileItemCopyWithImpl<$Res, _$_ProfileItem>
    implements _$$_ProfileItemCopyWith<$Res> {
  __$$_ProfileItemCopyWithImpl(
      _$_ProfileItem _value, $Res Function(_$_ProfileItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? onTap = null,
  }) {
    return _then(_$_ProfileItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$_ProfileItem extends _ProfileItem {
  const _$_ProfileItem(
      {required this.id,
      required this.name,
      required this.icon,
      required this.onTap})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final dynamic Function() onTap;

  @override
  String toString() {
    return 'ProfileItem(id: $id, name: $name, icon: $icon, onTap: $onTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon, onTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileItemCopyWith<_$_ProfileItem> get copyWith =>
      __$$_ProfileItemCopyWithImpl<_$_ProfileItem>(this, _$identity);
}

abstract class _ProfileItem extends ProfileItem {
  const factory _ProfileItem(
      {required final String id,
      required final String name,
      required final String icon,
      required final dynamic Function() onTap}) = _$_ProfileItem;
  const _ProfileItem._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  dynamic Function() get onTap;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileItemCopyWith<_$_ProfileItem> get copyWith =>
      throw _privateConstructorUsedError;
}
