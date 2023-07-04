// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Component _$ComponentFromJson(Map<String, dynamic> json) {
  return _Component.fromJson(json);
}

/// @nodoc
mixin _$Component {
  String get type => throw _privateConstructorUsedError;
  Content get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentCopyWith<Component> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentCopyWith<$Res> {
  factory $ComponentCopyWith(Component value, $Res Function(Component) then) =
      _$ComponentCopyWithImpl<$Res, Component>;
  @useResult
  $Res call({String type, Content data});

  $ContentCopyWith<$Res> get data;
}

/// @nodoc
class _$ComponentCopyWithImpl<$Res, $Val extends Component>
    implements $ComponentCopyWith<$Res> {
  _$ComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Content,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res> get data {
    return $ContentCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComponentCopyWith<$Res> implements $ComponentCopyWith<$Res> {
  factory _$$_ComponentCopyWith(
          _$_Component value, $Res Function(_$_Component) then) =
      __$$_ComponentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, Content data});

  @override
  $ContentCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ComponentCopyWithImpl<$Res>
    extends _$ComponentCopyWithImpl<$Res, _$_Component>
    implements _$$_ComponentCopyWith<$Res> {
  __$$_ComponentCopyWithImpl(
      _$_Component _value, $Res Function(_$_Component) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$_Component(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Content,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Component extends _Component {
  const _$_Component({required this.type, required this.data}) : super._();

  factory _$_Component.fromJson(Map<String, dynamic> json) =>
      _$$_ComponentFromJson(json);

  @override
  final String type;
  @override
  final Content data;

  @override
  String toString() {
    return 'Component(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Component &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComponentCopyWith<_$_Component> get copyWith =>
      __$$_ComponentCopyWithImpl<_$_Component>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComponentToJson(
      this,
    );
  }
}

abstract class _Component extends Component {
  const factory _Component(
      {required final String type, required final Content data}) = _$_Component;
  const _Component._() : super._();

  factory _Component.fromJson(Map<String, dynamic> json) =
      _$_Component.fromJson;

  @override
  String get type;
  @override
  Content get data;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentCopyWith<_$_Component> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  String get content => throw _privateConstructorUsedError;
  List<_Media> get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call({String content, List<_Media> media});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<_Media>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, List<_Media> media});
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$_Content>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? media = null,
  }) {
    return _then(_$_Content(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<_Media>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content extends _Content {
  const _$_Content({this.content = '', final List<_Media> media = const []})
      : _media = media,
        super._();

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  @JsonKey()
  final String content;
  final List<_Media> _media;
  @override
  @JsonKey()
  List<_Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'Content(content: $content, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, content, const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(
      this,
    );
  }
}

abstract class _Content extends Content {
  const factory _Content({final String content, final List<_Media> media}) =
      _$_Content;
  const _Content._() : super._();

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  String get content;
  @override
  List<_Media> get media;
  @override
  @JsonKey(ignore: true)
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}

_Media _$_MediaFromJson(Map<String, dynamic> json) {
  return __Media.fromJson(json);
}

/// @nodoc
mixin _$_Media {
  String? get url => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MediaCopyWith<_Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) then) =
      __$MediaCopyWithImpl<$Res, _Media>;
  @useResult
  $Res call(
      {String? url,
      String? videoId,
      String? caption,
      String? source,
      double? width,
      double? height});
}

/// @nodoc
class __$MediaCopyWithImpl<$Res, $Val extends _Media>
    implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? videoId = freezed,
    Object? caption = freezed,
    Object? source = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__MediaCopyWith<$Res> implements _$MediaCopyWith<$Res> {
  factory _$$__MediaCopyWith(_$__Media value, $Res Function(_$__Media) then) =
      __$$__MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String? videoId,
      String? caption,
      String? source,
      double? width,
      double? height});
}

/// @nodoc
class __$$__MediaCopyWithImpl<$Res>
    extends __$MediaCopyWithImpl<$Res, _$__Media>
    implements _$$__MediaCopyWith<$Res> {
  __$$__MediaCopyWithImpl(_$__Media _value, $Res Function(_$__Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? videoId = freezed,
    Object? caption = freezed,
    Object? source = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$__Media(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Media extends __Media {
  const _$__Media(
      {this.url = '',
      this.videoId = '',
      this.caption = '',
      this.source = '',
      this.width = 1920,
      this.height = 1080})
      : super._();

  factory _$__Media.fromJson(Map<String, dynamic> json) =>
      _$$__MediaFromJson(json);

  @override
  @JsonKey()
  final String? url;
  @override
  @JsonKey()
  final String? videoId;
  @override
  @JsonKey()
  final String? caption;
  @override
  @JsonKey()
  final String? source;
  @override
  @JsonKey()
  final double? width;
  @override
  @JsonKey()
  final double? height;

  @override
  String toString() {
    return '_Media(url: $url, videoId: $videoId, caption: $caption, source: $source, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Media &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, videoId, caption, source, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__MediaCopyWith<_$__Media> get copyWith =>
      __$$__MediaCopyWithImpl<_$__Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__MediaToJson(
      this,
    );
  }
}

abstract class __Media extends _Media {
  const factory __Media(
      {final String? url,
      final String? videoId,
      final String? caption,
      final String? source,
      final double? width,
      final double? height}) = _$__Media;
  const __Media._() : super._();

  factory __Media.fromJson(Map<String, dynamic> json) = _$__Media.fromJson;

  @override
  String? get url;
  @override
  String? get videoId;
  @override
  String? get caption;
  @override
  String? get source;
  @override
  double? get width;
  @override
  double? get height;
  @override
  @JsonKey(ignore: true)
  _$$__MediaCopyWith<_$__Media> get copyWith =>
      throw _privateConstructorUsedError;
}
