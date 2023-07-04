// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  List<PrimaryImage> get otherAssets => throw _privateConstructorUsedError;
  PrimaryImage get primaryImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call({List<PrimaryImage> otherAssets, PrimaryImage primaryImage});

  $PrimaryImageCopyWith<$Res> get primaryImage;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherAssets = null,
    Object? primaryImage = null,
  }) {
    return _then(_value.copyWith(
      otherAssets: null == otherAssets
          ? _value.otherAssets
          : otherAssets // ignore: cast_nullable_to_non_nullable
              as List<PrimaryImage>,
      primaryImage: null == primaryImage
          ? _value.primaryImage
          : primaryImage // ignore: cast_nullable_to_non_nullable
              as PrimaryImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrimaryImageCopyWith<$Res> get primaryImage {
    return $PrimaryImageCopyWith<$Res>(_value.primaryImage, (value) {
      return _then(_value.copyWith(primaryImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PrimaryImage> otherAssets, PrimaryImage primaryImage});

  @override
  $PrimaryImageCopyWith<$Res> get primaryImage;
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherAssets = null,
    Object? primaryImage = null,
  }) {
    return _then(_$_Media(
      otherAssets: null == otherAssets
          ? _value._otherAssets
          : otherAssets // ignore: cast_nullable_to_non_nullable
              as List<PrimaryImage>,
      primaryImage: null == primaryImage
          ? _value.primaryImage
          : primaryImage // ignore: cast_nullable_to_non_nullable
              as PrimaryImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {final List<PrimaryImage> otherAssets = const [],
      required this.primaryImage})
      : _otherAssets = otherAssets;

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  final List<PrimaryImage> _otherAssets;
  @override
  @JsonKey()
  List<PrimaryImage> get otherAssets {
    if (_otherAssets is EqualUnmodifiableListView) return _otherAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherAssets);
  }

  @override
  final PrimaryImage primaryImage;

  @override
  String toString() {
    return 'Media(otherAssets: $otherAssets, primaryImage: $primaryImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            const DeepCollectionEquality()
                .equals(other._otherAssets, _otherAssets) &&
            (identical(other.primaryImage, primaryImage) ||
                other.primaryImage == primaryImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_otherAssets), primaryImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {final List<PrimaryImage> otherAssets,
      required final PrimaryImage primaryImage}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  List<PrimaryImage> get otherAssets;
  @override
  PrimaryImage get primaryImage;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}

PrimaryImage _$PrimaryImageFromJson(Map<String, dynamic> json) {
  return _PrimaryImage.fromJson(json);
}

/// @nodoc
mixin _$PrimaryImage {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  CoverImage? get source => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  int? get videoLength => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  double? get seekHead => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimaryImageCopyWith<PrimaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryImageCopyWith<$Res> {
  factory $PrimaryImageCopyWith(
          PrimaryImage value, $Res Function(PrimaryImage) then) =
      _$PrimaryImageCopyWithImpl<$Res, PrimaryImage>;
  @useResult
  $Res call(
      {String id,
      String path,
      CoverImage? source,
      String? videoId,
      int? videoLength,
      String? title,
      String? name,
      String? description,
      String? caption,
      double? seekHead,
      double? width,
      double? height});

  $CoverImageCopyWith<$Res>? get source;
}

/// @nodoc
class _$PrimaryImageCopyWithImpl<$Res, $Val extends PrimaryImage>
    implements $PrimaryImageCopyWith<$Res> {
  _$PrimaryImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? source = freezed,
    Object? videoId = freezed,
    Object? videoLength = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? caption = freezed,
    Object? seekHead = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CoverImage?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLength: freezed == videoLength
          ? _value.videoLength
          : videoLength // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      seekHead: freezed == seekHead
          ? _value.seekHead
          : seekHead // ignore: cast_nullable_to_non_nullable
              as double?,
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

  @override
  @pragma('vm:prefer-inline')
  $CoverImageCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $CoverImageCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrimaryImageCopyWith<$Res>
    implements $PrimaryImageCopyWith<$Res> {
  factory _$$_PrimaryImageCopyWith(
          _$_PrimaryImage value, $Res Function(_$_PrimaryImage) then) =
      __$$_PrimaryImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      CoverImage? source,
      String? videoId,
      int? videoLength,
      String? title,
      String? name,
      String? description,
      String? caption,
      double? seekHead,
      double? width,
      double? height});

  @override
  $CoverImageCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_PrimaryImageCopyWithImpl<$Res>
    extends _$PrimaryImageCopyWithImpl<$Res, _$_PrimaryImage>
    implements _$$_PrimaryImageCopyWith<$Res> {
  __$$_PrimaryImageCopyWithImpl(
      _$_PrimaryImage _value, $Res Function(_$_PrimaryImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? source = freezed,
    Object? videoId = freezed,
    Object? videoLength = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? caption = freezed,
    Object? seekHead = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_PrimaryImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CoverImage?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLength: freezed == videoLength
          ? _value.videoLength
          : videoLength // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      seekHead: freezed == seekHead
          ? _value.seekHead
          : seekHead // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$_PrimaryImage implements _PrimaryImage {
  const _$_PrimaryImage(
      {this.id = '',
      this.path = '',
      this.source,
      this.videoId,
      this.videoLength = 0,
      this.title = '',
      this.name = '',
      this.description = '',
      this.caption = '',
      this.seekHead = 0.0,
      this.width = 1920,
      this.height = 1080});

  factory _$_PrimaryImage.fromJson(Map<String, dynamic> json) =>
      _$$_PrimaryImageFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String path;
  @override
  final CoverImage? source;
  @override
  final String? videoId;
  @override
  @JsonKey()
  final int? videoLength;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? caption;
  @override
  @JsonKey()
  final double? seekHead;
  @override
  @JsonKey()
  final double? width;
  @override
  @JsonKey()
  final double? height;

  @override
  String toString() {
    return 'PrimaryImage(id: $id, path: $path, source: $source, videoId: $videoId, videoLength: $videoLength, title: $title, name: $name, description: $description, caption: $caption, seekHead: $seekHead, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrimaryImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.videoLength, videoLength) ||
                other.videoLength == videoLength) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.seekHead, seekHead) ||
                other.seekHead == seekHead) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, source, videoId,
      videoLength, title, name, description, caption, seekHead, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrimaryImageCopyWith<_$_PrimaryImage> get copyWith =>
      __$$_PrimaryImageCopyWithImpl<_$_PrimaryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrimaryImageToJson(
      this,
    );
  }
}

abstract class _PrimaryImage implements PrimaryImage {
  const factory _PrimaryImage(
      {final String id,
      final String path,
      final CoverImage? source,
      final String? videoId,
      final int? videoLength,
      final String? title,
      final String? name,
      final String? description,
      final String? caption,
      final double? seekHead,
      final double? width,
      final double? height}) = _$_PrimaryImage;

  factory _PrimaryImage.fromJson(Map<String, dynamic> json) =
      _$_PrimaryImage.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  CoverImage? get source;
  @override
  String? get videoId;
  @override
  int? get videoLength;
  @override
  String? get title;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get caption;
  @override
  double? get seekHead;
  @override
  double? get width;
  @override
  double? get height;
  @override
  @JsonKey(ignore: true)
  _$$_PrimaryImageCopyWith<_$_PrimaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverImage _$CoverImageFromJson(Map<String, dynamic> json) {
  return _CoverImage.fromJson(json);
}

/// @nodoc
mixin _$CoverImage {
  String get original => throw _privateConstructorUsedError;
  String get mobileHero => throw _privateConstructorUsedError;
  String get mobileArticle => throw _privateConstructorUsedError;
  String get mobileArticleSmall => throw _privateConstructorUsedError;
  String get mobileBlinx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverImageCopyWith<CoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverImageCopyWith<$Res> {
  factory $CoverImageCopyWith(
          CoverImage value, $Res Function(CoverImage) then) =
      _$CoverImageCopyWithImpl<$Res, CoverImage>;
  @useResult
  $Res call(
      {String original,
      String mobileHero,
      String mobileArticle,
      String mobileArticleSmall,
      String mobileBlinx});
}

/// @nodoc
class _$CoverImageCopyWithImpl<$Res, $Val extends CoverImage>
    implements $CoverImageCopyWith<$Res> {
  _$CoverImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? mobileHero = null,
    Object? mobileArticle = null,
    Object? mobileArticleSmall = null,
    Object? mobileBlinx = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      mobileHero: null == mobileHero
          ? _value.mobileHero
          : mobileHero // ignore: cast_nullable_to_non_nullable
              as String,
      mobileArticle: null == mobileArticle
          ? _value.mobileArticle
          : mobileArticle // ignore: cast_nullable_to_non_nullable
              as String,
      mobileArticleSmall: null == mobileArticleSmall
          ? _value.mobileArticleSmall
          : mobileArticleSmall // ignore: cast_nullable_to_non_nullable
              as String,
      mobileBlinx: null == mobileBlinx
          ? _value.mobileBlinx
          : mobileBlinx // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoverImageCopyWith<$Res>
    implements $CoverImageCopyWith<$Res> {
  factory _$$_CoverImageCopyWith(
          _$_CoverImage value, $Res Function(_$_CoverImage) then) =
      __$$_CoverImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original,
      String mobileHero,
      String mobileArticle,
      String mobileArticleSmall,
      String mobileBlinx});
}

/// @nodoc
class __$$_CoverImageCopyWithImpl<$Res>
    extends _$CoverImageCopyWithImpl<$Res, _$_CoverImage>
    implements _$$_CoverImageCopyWith<$Res> {
  __$$_CoverImageCopyWithImpl(
      _$_CoverImage _value, $Res Function(_$_CoverImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? mobileHero = null,
    Object? mobileArticle = null,
    Object? mobileArticleSmall = null,
    Object? mobileBlinx = null,
  }) {
    return _then(_$_CoverImage(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      mobileHero: null == mobileHero
          ? _value.mobileHero
          : mobileHero // ignore: cast_nullable_to_non_nullable
              as String,
      mobileArticle: null == mobileArticle
          ? _value.mobileArticle
          : mobileArticle // ignore: cast_nullable_to_non_nullable
              as String,
      mobileArticleSmall: null == mobileArticleSmall
          ? _value.mobileArticleSmall
          : mobileArticleSmall // ignore: cast_nullable_to_non_nullable
              as String,
      mobileBlinx: null == mobileBlinx
          ? _value.mobileBlinx
          : mobileBlinx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoverImage implements _CoverImage {
  const _$_CoverImage(
      {this.original = '',
      this.mobileHero = '',
      this.mobileArticle = '',
      this.mobileArticleSmall = '',
      this.mobileBlinx = ''});

  factory _$_CoverImage.fromJson(Map<String, dynamic> json) =>
      _$$_CoverImageFromJson(json);

  @override
  @JsonKey()
  final String original;
  @override
  @JsonKey()
  final String mobileHero;
  @override
  @JsonKey()
  final String mobileArticle;
  @override
  @JsonKey()
  final String mobileArticleSmall;
  @override
  @JsonKey()
  final String mobileBlinx;

  @override
  String toString() {
    return 'CoverImage(original: $original, mobileHero: $mobileHero, mobileArticle: $mobileArticle, mobileArticleSmall: $mobileArticleSmall, mobileBlinx: $mobileBlinx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoverImage &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.mobileHero, mobileHero) ||
                other.mobileHero == mobileHero) &&
            (identical(other.mobileArticle, mobileArticle) ||
                other.mobileArticle == mobileArticle) &&
            (identical(other.mobileArticleSmall, mobileArticleSmall) ||
                other.mobileArticleSmall == mobileArticleSmall) &&
            (identical(other.mobileBlinx, mobileBlinx) ||
                other.mobileBlinx == mobileBlinx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original, mobileHero,
      mobileArticle, mobileArticleSmall, mobileBlinx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoverImageCopyWith<_$_CoverImage> get copyWith =>
      __$$_CoverImageCopyWithImpl<_$_CoverImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverImageToJson(
      this,
    );
  }
}

abstract class _CoverImage implements CoverImage {
  const factory _CoverImage(
      {final String original,
      final String mobileHero,
      final String mobileArticle,
      final String mobileArticleSmall,
      final String mobileBlinx}) = _$_CoverImage;

  factory _CoverImage.fromJson(Map<String, dynamic> json) =
      _$_CoverImage.fromJson;

  @override
  String get original;
  @override
  String get mobileHero;
  @override
  String get mobileArticle;
  @override
  String get mobileArticleSmall;
  @override
  String get mobileBlinx;
  @override
  @JsonKey(ignore: true)
  _$$_CoverImageCopyWith<_$_CoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}
