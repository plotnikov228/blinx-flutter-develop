// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentResponse _$ContentResponseFromJson(Map<String, dynamic> json) {
  return _ContentResponse.fromJson(json);
}

/// @nodoc
mixin _$ContentResponse {
  List<Article> get heros => throw _privateConstructorUsedError;
  List<Article> get trending => throw _privateConstructorUsedError;
  ArticlesResponse get editorsChoice => throw _privateConstructorUsedError;
  List<Article> get topStory => throw _privateConstructorUsedError;
  List<Article> get reels => throw _privateConstructorUsedError;
  List<FAdvertise> get advertises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentResponseCopyWith<ContentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentResponseCopyWith<$Res> {
  factory $ContentResponseCopyWith(
          ContentResponse value, $Res Function(ContentResponse) then) =
      _$ContentResponseCopyWithImpl<$Res, ContentResponse>;
  @useResult
  $Res call(
      {List<Article> heros,
      List<Article> trending,
      ArticlesResponse editorsChoice,
      List<Article> topStory,
      List<Article> reels,
      List<FAdvertise> advertises});

  $ArticlesResponseCopyWith<$Res> get editorsChoice;
}

/// @nodoc
class _$ContentResponseCopyWithImpl<$Res, $Val extends ContentResponse>
    implements $ContentResponseCopyWith<$Res> {
  _$ContentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heros = null,
    Object? trending = null,
    Object? editorsChoice = null,
    Object? topStory = null,
    Object? reels = null,
    Object? advertises = null,
  }) {
    return _then(_value.copyWith(
      heros: null == heros
          ? _value.heros
          : heros // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      editorsChoice: null == editorsChoice
          ? _value.editorsChoice
          : editorsChoice // ignore: cast_nullable_to_non_nullable
              as ArticlesResponse,
      topStory: null == topStory
          ? _value.topStory
          : topStory // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      reels: null == reels
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      advertises: null == advertises
          ? _value.advertises
          : advertises // ignore: cast_nullable_to_non_nullable
              as List<FAdvertise>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticlesResponseCopyWith<$Res> get editorsChoice {
    return $ArticlesResponseCopyWith<$Res>(_value.editorsChoice, (value) {
      return _then(_value.copyWith(editorsChoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContentResponseCopyWith<$Res>
    implements $ContentResponseCopyWith<$Res> {
  factory _$$_ContentResponseCopyWith(
          _$_ContentResponse value, $Res Function(_$_ContentResponse) then) =
      __$$_ContentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Article> heros,
      List<Article> trending,
      ArticlesResponse editorsChoice,
      List<Article> topStory,
      List<Article> reels,
      List<FAdvertise> advertises});

  @override
  $ArticlesResponseCopyWith<$Res> get editorsChoice;
}

/// @nodoc
class __$$_ContentResponseCopyWithImpl<$Res>
    extends _$ContentResponseCopyWithImpl<$Res, _$_ContentResponse>
    implements _$$_ContentResponseCopyWith<$Res> {
  __$$_ContentResponseCopyWithImpl(
      _$_ContentResponse _value, $Res Function(_$_ContentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heros = null,
    Object? trending = null,
    Object? editorsChoice = null,
    Object? topStory = null,
    Object? reels = null,
    Object? advertises = null,
  }) {
    return _then(_$_ContentResponse(
      heros: null == heros
          ? _value._heros
          : heros // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      editorsChoice: null == editorsChoice
          ? _value.editorsChoice
          : editorsChoice // ignore: cast_nullable_to_non_nullable
              as ArticlesResponse,
      topStory: null == topStory
          ? _value._topStory
          : topStory // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      reels: null == reels
          ? _value._reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      advertises: null == advertises
          ? _value._advertises
          : advertises // ignore: cast_nullable_to_non_nullable
              as List<FAdvertise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentResponse extends _ContentResponse {
  const _$_ContentResponse(
      {final List<Article> heros = const [],
      final List<Article> trending = const [],
      this.editorsChoice =
          const ArticlesResponse(limit: 0, total: 0, offset: 0, results: []),
      final List<Article> topStory = const [],
      final List<Article> reels = const [],
      final List<FAdvertise> advertises = const []})
      : _heros = heros,
        _trending = trending,
        _topStory = topStory,
        _reels = reels,
        _advertises = advertises,
        super._();

  factory _$_ContentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContentResponseFromJson(json);

  final List<Article> _heros;
  @override
  @JsonKey()
  List<Article> get heros {
    if (_heros is EqualUnmodifiableListView) return _heros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heros);
  }

  final List<Article> _trending;
  @override
  @JsonKey()
  List<Article> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  @override
  @JsonKey()
  final ArticlesResponse editorsChoice;
  final List<Article> _topStory;
  @override
  @JsonKey()
  List<Article> get topStory {
    if (_topStory is EqualUnmodifiableListView) return _topStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topStory);
  }

  final List<Article> _reels;
  @override
  @JsonKey()
  List<Article> get reels {
    if (_reels is EqualUnmodifiableListView) return _reels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reels);
  }

  final List<FAdvertise> _advertises;
  @override
  @JsonKey()
  List<FAdvertise> get advertises {
    if (_advertises is EqualUnmodifiableListView) return _advertises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertises);
  }

  @override
  String toString() {
    return 'ContentResponse(heros: $heros, trending: $trending, editorsChoice: $editorsChoice, topStory: $topStory, reels: $reels, advertises: $advertises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentResponse &&
            const DeepCollectionEquality().equals(other._heros, _heros) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            (identical(other.editorsChoice, editorsChoice) ||
                other.editorsChoice == editorsChoice) &&
            const DeepCollectionEquality().equals(other._topStory, _topStory) &&
            const DeepCollectionEquality().equals(other._reels, _reels) &&
            const DeepCollectionEquality()
                .equals(other._advertises, _advertises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_heros),
      const DeepCollectionEquality().hash(_trending),
      editorsChoice,
      const DeepCollectionEquality().hash(_topStory),
      const DeepCollectionEquality().hash(_reels),
      const DeepCollectionEquality().hash(_advertises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentResponseCopyWith<_$_ContentResponse> get copyWith =>
      __$$_ContentResponseCopyWithImpl<_$_ContentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentResponseToJson(
      this,
    );
  }
}

abstract class _ContentResponse extends ContentResponse {
  const factory _ContentResponse(
      {final List<Article> heros,
      final List<Article> trending,
      final ArticlesResponse editorsChoice,
      final List<Article> topStory,
      final List<Article> reels,
      final List<FAdvertise> advertises}) = _$_ContentResponse;
  const _ContentResponse._() : super._();

  factory _ContentResponse.fromJson(Map<String, dynamic> json) =
      _$_ContentResponse.fromJson;

  @override
  List<Article> get heros;
  @override
  List<Article> get trending;
  @override
  ArticlesResponse get editorsChoice;
  @override
  List<Article> get topStory;
  @override
  List<Article> get reels;
  @override
  List<FAdvertise> get advertises;
  @override
  @JsonKey(ignore: true)
  _$$_ContentResponseCopyWith<_$_ContentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FAdvertise _$FAdvertiseFromJson(Map<String, dynamic> json) {
  return _FAdvertise.fromJson(json);
}

/// @nodoc
mixin _$FAdvertise {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  CoverImage get media => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAdvertiseCopyWith<FAdvertise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAdvertiseCopyWith<$Res> {
  factory $FAdvertiseCopyWith(
          FAdvertise value, $Res Function(FAdvertise) then) =
      _$FAdvertiseCopyWithImpl<$Res, FAdvertise>;
  @useResult
  $Res call(
      {String id, String path, CoverImage media, String name, String url});

  $CoverImageCopyWith<$Res> get media;
}

/// @nodoc
class _$FAdvertiseCopyWithImpl<$Res, $Val extends FAdvertise>
    implements $FAdvertiseCopyWith<$Res> {
  _$FAdvertiseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? media = null,
    Object? name = null,
    Object? url = null,
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
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as CoverImage,
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

  @override
  @pragma('vm:prefer-inline')
  $CoverImageCopyWith<$Res> get media {
    return $CoverImageCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FAdvertiseCopyWith<$Res>
    implements $FAdvertiseCopyWith<$Res> {
  factory _$$_FAdvertiseCopyWith(
          _$_FAdvertise value, $Res Function(_$_FAdvertise) then) =
      __$$_FAdvertiseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String path, CoverImage media, String name, String url});

  @override
  $CoverImageCopyWith<$Res> get media;
}

/// @nodoc
class __$$_FAdvertiseCopyWithImpl<$Res>
    extends _$FAdvertiseCopyWithImpl<$Res, _$_FAdvertise>
    implements _$$_FAdvertiseCopyWith<$Res> {
  __$$_FAdvertiseCopyWithImpl(
      _$_FAdvertise _value, $Res Function(_$_FAdvertise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? media = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_FAdvertise(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as CoverImage,
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
class _$_FAdvertise implements _FAdvertise {
  const _$_FAdvertise(
      {required this.id,
      required this.path,
      required this.media,
      required this.name,
      required this.url});

  factory _$_FAdvertise.fromJson(Map<String, dynamic> json) =>
      _$$_FAdvertiseFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final CoverImage media;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'FAdvertise(id: $id, path: $path, media: $media, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAdvertise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, media, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FAdvertiseCopyWith<_$_FAdvertise> get copyWith =>
      __$$_FAdvertiseCopyWithImpl<_$_FAdvertise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAdvertiseToJson(
      this,
    );
  }
}

abstract class _FAdvertise implements FAdvertise {
  const factory _FAdvertise(
      {required final String id,
      required final String path,
      required final CoverImage media,
      required final String name,
      required final String url}) = _$_FAdvertise;

  factory _FAdvertise.fromJson(Map<String, dynamic> json) =
      _$_FAdvertise.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  CoverImage get media;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_FAdvertiseCopyWith<_$_FAdvertise> get copyWith =>
      throw _privateConstructorUsedError;
}
