// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Advertise _$AdvertiseFromJson(Map<String, dynamic> json) {
  return _Advertise.fromJson(json);
}

/// @nodoc
mixin _$Advertise {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertiseCopyWith<Advertise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertiseCopyWith<$Res> {
  factory $AdvertiseCopyWith(Advertise value, $Res Function(Advertise) then) =
      _$AdvertiseCopyWithImpl<$Res, Advertise>;
  @useResult
  $Res call({String id, String image, String name, String url});
}

/// @nodoc
class _$AdvertiseCopyWithImpl<$Res, $Val extends Advertise>
    implements $AdvertiseCopyWith<$Res> {
  _$AdvertiseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvertiseCopyWith<$Res> implements $AdvertiseCopyWith<$Res> {
  factory _$$_AdvertiseCopyWith(
          _$_Advertise value, $Res Function(_$_Advertise) then) =
      __$$_AdvertiseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image, String name, String url});
}

/// @nodoc
class __$$_AdvertiseCopyWithImpl<$Res>
    extends _$AdvertiseCopyWithImpl<$Res, _$_Advertise>
    implements _$$_AdvertiseCopyWith<$Res> {
  __$$_AdvertiseCopyWithImpl(
      _$_Advertise _value, $Res Function(_$_Advertise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_Advertise(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Advertise implements _Advertise {
  const _$_Advertise(
      {this.id = '', this.image = '', this.name = '', this.url = ''});

  factory _$_Advertise.fromJson(Map<String, dynamic> json) =>
      _$$_AdvertiseFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'Advertise(id: $id, image: $image, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Advertise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvertiseCopyWith<_$_Advertise> get copyWith =>
      __$$_AdvertiseCopyWithImpl<_$_Advertise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvertiseToJson(
      this,
    );
  }
}

abstract class _Advertise implements Advertise {
  const factory _Advertise(
      {final String id,
      final String image,
      final String name,
      final String url}) = _$_Advertise;

  factory _Advertise.fromJson(Map<String, dynamic> json) =
      _$_Advertise.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_AdvertiseCopyWith<_$_Advertise> get copyWith =>
      throw _privateConstructorUsedError;
}
