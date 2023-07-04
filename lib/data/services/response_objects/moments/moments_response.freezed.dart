// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MomentsResponse _$MomentsResponseFromJson(Map<String, dynamic> json) {
  return _MomentsResponse.fromJson(json);
}

/// @nodoc
mixin _$MomentsResponse {
  List<_Moment> get moments => throw _privateConstructorUsedError;
  _Storyteller get storyteller => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MomentsResponseCopyWith<MomentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MomentsResponseCopyWith<$Res> {
  factory $MomentsResponseCopyWith(
          MomentsResponse value, $Res Function(MomentsResponse) then) =
      _$MomentsResponseCopyWithImpl<$Res, MomentsResponse>;
  @useResult
  $Res call({List<_Moment> moments, _Storyteller storyteller});

  _$StorytellerCopyWith<$Res> get storyteller;
}

/// @nodoc
class _$MomentsResponseCopyWithImpl<$Res, $Val extends MomentsResponse>
    implements $MomentsResponseCopyWith<$Res> {
  _$MomentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moments = null,
    Object? storyteller = null,
  }) {
    return _then(_value.copyWith(
      moments: null == moments
          ? _value.moments
          : moments // ignore: cast_nullable_to_non_nullable
              as List<_Moment>,
      storyteller: null == storyteller
          ? _value.storyteller
          : storyteller // ignore: cast_nullable_to_non_nullable
              as _Storyteller,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$StorytellerCopyWith<$Res> get storyteller {
    return _$StorytellerCopyWith<$Res>(_value.storyteller, (value) {
      return _then(_value.copyWith(storyteller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MomentsResponseCopyWith<$Res>
    implements $MomentsResponseCopyWith<$Res> {
  factory _$$_MomentsResponseCopyWith(
          _$_MomentsResponse value, $Res Function(_$_MomentsResponse) then) =
      __$$_MomentsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<_Moment> moments, _Storyteller storyteller});

  @override
  _$StorytellerCopyWith<$Res> get storyteller;
}

/// @nodoc
class __$$_MomentsResponseCopyWithImpl<$Res>
    extends _$MomentsResponseCopyWithImpl<$Res, _$_MomentsResponse>
    implements _$$_MomentsResponseCopyWith<$Res> {
  __$$_MomentsResponseCopyWithImpl(
      _$_MomentsResponse _value, $Res Function(_$_MomentsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moments = null,
    Object? storyteller = null,
  }) {
    return _then(_$_MomentsResponse(
      moments: null == moments
          ? _value._moments
          : moments // ignore: cast_nullable_to_non_nullable
              as List<_Moment>,
      storyteller: null == storyteller
          ? _value.storyteller
          : storyteller // ignore: cast_nullable_to_non_nullable
              as _Storyteller,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MomentsResponse extends _MomentsResponse {
  const _$_MomentsResponse(
      {required final List<_Moment> moments, required this.storyteller})
      : _moments = moments,
        super._();

  factory _$_MomentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MomentsResponseFromJson(json);

  final List<_Moment> _moments;
  @override
  List<_Moment> get moments {
    if (_moments is EqualUnmodifiableListView) return _moments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moments);
  }

  @override
  final _Storyteller storyteller;

  @override
  String toString() {
    return 'MomentsResponse(moments: $moments, storyteller: $storyteller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MomentsResponse &&
            const DeepCollectionEquality().equals(other._moments, _moments) &&
            (identical(other.storyteller, storyteller) ||
                other.storyteller == storyteller));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_moments), storyteller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MomentsResponseCopyWith<_$_MomentsResponse> get copyWith =>
      __$$_MomentsResponseCopyWithImpl<_$_MomentsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MomentsResponseToJson(
      this,
    );
  }
}

abstract class _MomentsResponse extends MomentsResponse {
  const factory _MomentsResponse(
      {required final List<_Moment> moments,
      required final _Storyteller storyteller}) = _$_MomentsResponse;
  const _MomentsResponse._() : super._();

  factory _MomentsResponse.fromJson(Map<String, dynamic> json) =
      _$_MomentsResponse.fromJson;

  @override
  List<_Moment> get moments;
  @override
  _Storyteller get storyteller;
  @override
  @JsonKey(ignore: true)
  _$$_MomentsResponseCopyWith<_$_MomentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

_Moment _$_MomentFromJson(Map<String, dynamic> json) {
  return __Moment.fromJson(json);
}

/// @nodoc
mixin _$_Moment {
  _Article get article => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MomentCopyWith<_Moment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MomentCopyWith<$Res> {
  factory _$MomentCopyWith(_Moment value, $Res Function(_Moment) then) =
      __$MomentCopyWithImpl<$Res, _Moment>;
  @useResult
  $Res call({_Article article, bool read});

  _$ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$MomentCopyWithImpl<$Res, $Val extends _Moment>
    implements _$MomentCopyWith<$Res> {
  __$MomentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
    Object? read = null,
  }) {
    return _then(_value.copyWith(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as _Article,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$ArticleCopyWith<$Res> get article {
    return _$ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__MomentCopyWith<$Res> implements _$MomentCopyWith<$Res> {
  factory _$$__MomentCopyWith(
          _$__Moment value, $Res Function(_$__Moment) then) =
      __$$__MomentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({_Article article, bool read});

  @override
  _$ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$$__MomentCopyWithImpl<$Res>
    extends __$MomentCopyWithImpl<$Res, _$__Moment>
    implements _$$__MomentCopyWith<$Res> {
  __$$__MomentCopyWithImpl(_$__Moment _value, $Res Function(_$__Moment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
    Object? read = null,
  }) {
    return _then(_$__Moment(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as _Article,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Moment implements __Moment {
  const _$__Moment({required this.article, required this.read});

  factory _$__Moment.fromJson(Map<String, dynamic> json) =>
      _$$__MomentFromJson(json);

  @override
  final _Article article;
  @override
  final bool read;

  @override
  String toString() {
    return '_Moment(article: $article, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Moment &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, article, read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__MomentCopyWith<_$__Moment> get copyWith =>
      __$$__MomentCopyWithImpl<_$__Moment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__MomentToJson(
      this,
    );
  }
}

abstract class __Moment implements _Moment {
  const factory __Moment(
      {required final _Article article, required final bool read}) = _$__Moment;

  factory __Moment.fromJson(Map<String, dynamic> json) = _$__Moment.fromJson;

  @override
  _Article get article;
  @override
  bool get read;
  @override
  @JsonKey(ignore: true)
  _$$__MomentCopyWith<_$__Moment> get copyWith =>
      throw _privateConstructorUsedError;
}

_Article _$_ArticleFromJson(Map<String, dynamic> json) {
  return __Article.fromJson(json);
}

/// @nodoc
mixin _$_Article {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  _Category? get category => throw _privateConstructorUsedError;
  bool get isHero => throw _privateConstructorUsedError;
  bool get isTopStory => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  String get articleType => throw _privateConstructorUsedError;
  DateTime get publishDate => throw _privateConstructorUsedError;
  Media get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res, _Article>;
  @useResult
  $Res call(
      {String id,
      String path,
      String title,
      String name,
      String? description,
      String? content,
      _Category? category,
      bool isHero,
      bool isTopStory,
      bool isTrending,
      bool isLiked,
      String articleType,
      DateTime publishDate,
      Media media});

  _$CategoryCopyWith<$Res>? get category;
  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res, $Val extends _Article>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? title = null,
    Object? name = null,
    Object? description = freezed,
    Object? content = freezed,
    Object? category = freezed,
    Object? isHero = null,
    Object? isTopStory = null,
    Object? isTrending = null,
    Object? isLiked = null,
    Object? articleType = null,
    Object? publishDate = null,
    Object? media = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as _Category?,
      isHero: null == isHero
          ? _value.isHero
          : isHero // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopStory: null == isTopStory
          ? _value.isTopStory
          : isTopStory // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      articleType: null == articleType
          ? _value.articleType
          : articleType // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return _$CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res> get media {
    return $MediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__ArticleCopyWith<$Res> implements _$ArticleCopyWith<$Res> {
  factory _$$__ArticleCopyWith(
          _$__Article value, $Res Function(_$__Article) then) =
      __$$__ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      String title,
      String name,
      String? description,
      String? content,
      _Category? category,
      bool isHero,
      bool isTopStory,
      bool isTrending,
      bool isLiked,
      String articleType,
      DateTime publishDate,
      Media media});

  @override
  _$CategoryCopyWith<$Res>? get category;
  @override
  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$__ArticleCopyWithImpl<$Res>
    extends __$ArticleCopyWithImpl<$Res, _$__Article>
    implements _$$__ArticleCopyWith<$Res> {
  __$$__ArticleCopyWithImpl(
      _$__Article _value, $Res Function(_$__Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? title = null,
    Object? name = null,
    Object? description = freezed,
    Object? content = freezed,
    Object? category = freezed,
    Object? isHero = null,
    Object? isTopStory = null,
    Object? isTrending = null,
    Object? isLiked = null,
    Object? articleType = null,
    Object? publishDate = null,
    Object? media = null,
  }) {
    return _then(_$__Article(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as _Category?,
      isHero: null == isHero
          ? _value.isHero
          : isHero // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopStory: null == isTopStory
          ? _value.isTopStory
          : isTopStory // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      articleType: null == articleType
          ? _value.articleType
          : articleType // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Article implements __Article {
  const _$__Article(
      {required this.id,
      required this.path,
      required this.title,
      required this.name,
      required this.description,
      required this.content,
      required this.category,
      required this.isHero,
      required this.isTopStory,
      required this.isTrending,
      required this.isLiked,
      required this.articleType,
      required this.publishDate,
      required this.media});

  factory _$__Article.fromJson(Map<String, dynamic> json) =>
      _$$__ArticleFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String title;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? content;
  @override
  final _Category? category;
  @override
  final bool isHero;
  @override
  final bool isTopStory;
  @override
  final bool isTrending;
  @override
  final bool isLiked;
  @override
  final String articleType;
  @override
  final DateTime publishDate;
  @override
  final Media media;

  @override
  String toString() {
    return '_Article(id: $id, path: $path, title: $title, name: $name, description: $description, content: $content, category: $category, isHero: $isHero, isTopStory: $isTopStory, isTrending: $isTrending, isLiked: $isLiked, articleType: $articleType, publishDate: $publishDate, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Article &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isHero, isHero) || other.isHero == isHero) &&
            (identical(other.isTopStory, isTopStory) ||
                other.isTopStory == isTopStory) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.articleType, articleType) ||
                other.articleType == articleType) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      path,
      title,
      name,
      description,
      content,
      category,
      isHero,
      isTopStory,
      isTrending,
      isLiked,
      articleType,
      publishDate,
      media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__ArticleCopyWith<_$__Article> get copyWith =>
      __$$__ArticleCopyWithImpl<_$__Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ArticleToJson(
      this,
    );
  }
}

abstract class __Article implements _Article {
  const factory __Article(
      {required final String id,
      required final String path,
      required final String title,
      required final String name,
      required final String? description,
      required final String? content,
      required final _Category? category,
      required final bool isHero,
      required final bool isTopStory,
      required final bool isTrending,
      required final bool isLiked,
      required final String articleType,
      required final DateTime publishDate,
      required final Media media}) = _$__Article;

  factory __Article.fromJson(Map<String, dynamic> json) = _$__Article.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get title;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get content;
  @override
  _Category? get category;
  @override
  bool get isHero;
  @override
  bool get isTopStory;
  @override
  bool get isTrending;
  @override
  bool get isLiked;
  @override
  String get articleType;
  @override
  DateTime get publishDate;
  @override
  Media get media;
  @override
  @JsonKey(ignore: true)
  _$$__ArticleCopyWith<_$__Article> get copyWith =>
      throw _privateConstructorUsedError;
}

_Category _$_CategoryFromJson(Map<String, dynamic> json) {
  return __Category.fromJson(json);
}

/// @nodoc
mixin _$_Category {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get colors => throw _privateConstructorUsedError;
  _Avatar get coverImage => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res, _Category>;
  @useResult
  $Res call(
      {String id,
      String path,
      String colors,
      _Avatar coverImage,
      String displayName,
      String name,
      bool liked});

  _$AvatarCopyWith<$Res> get coverImage;
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res, $Val extends _Category>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? colors = null,
    Object? coverImage = null,
    Object? displayName = null,
    Object? name = null,
    Object? liked = null,
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
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as _Avatar,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$AvatarCopyWith<$Res> get coverImage {
    return _$AvatarCopyWith<$Res>(_value.coverImage, (value) {
      return _then(_value.copyWith(coverImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__CategoryCopyWith<$Res> implements _$CategoryCopyWith<$Res> {
  factory _$$__CategoryCopyWith(
          _$__Category value, $Res Function(_$__Category) then) =
      __$$__CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      String colors,
      _Avatar coverImage,
      String displayName,
      String name,
      bool liked});

  @override
  _$AvatarCopyWith<$Res> get coverImage;
}

/// @nodoc
class __$$__CategoryCopyWithImpl<$Res>
    extends __$CategoryCopyWithImpl<$Res, _$__Category>
    implements _$$__CategoryCopyWith<$Res> {
  __$$__CategoryCopyWithImpl(
      _$__Category _value, $Res Function(_$__Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? colors = null,
    Object? coverImage = null,
    Object? displayName = null,
    Object? name = null,
    Object? liked = null,
  }) {
    return _then(_$__Category(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as _Avatar,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Category implements __Category {
  const _$__Category(
      {required this.id,
      required this.path,
      required this.colors,
      required this.coverImage,
      required this.displayName,
      required this.name,
      required this.liked});

  factory _$__Category.fromJson(Map<String, dynamic> json) =>
      _$$__CategoryFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String colors;
  @override
  final _Avatar coverImage;
  @override
  final String displayName;
  @override
  final String name;
  @override
  final bool liked;

  @override
  String toString() {
    return '_Category(id: $id, path: $path, colors: $colors, coverImage: $coverImage, displayName: $displayName, name: $name, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.colors, colors) || other.colors == colors) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.liked, liked) || other.liked == liked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, path, colors, coverImage, displayName, name, liked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__CategoryCopyWith<_$__Category> get copyWith =>
      __$$__CategoryCopyWithImpl<_$__Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__CategoryToJson(
      this,
    );
  }
}

abstract class __Category implements _Category {
  const factory __Category(
      {required final String id,
      required final String path,
      required final String colors,
      required final _Avatar coverImage,
      required final String displayName,
      required final String name,
      required final bool liked}) = _$__Category;

  factory __Category.fromJson(Map<String, dynamic> json) =
      _$__Category.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get colors;
  @override
  _Avatar get coverImage;
  @override
  String get displayName;
  @override
  String get name;
  @override
  bool get liked;
  @override
  @JsonKey(ignore: true)
  _$$__CategoryCopyWith<_$__Category> get copyWith =>
      throw _privateConstructorUsedError;
}

_Avatar _$_AvatarFromJson(Map<String, dynamic> json) {
  return __Avatar.fromJson(json);
}

/// @nodoc
mixin _$_Avatar {
  String? get avatar => throw _privateConstructorUsedError;
  String? get storycard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AvatarCopyWith<_Avatar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AvatarCopyWith<$Res> {
  factory _$AvatarCopyWith(_Avatar value, $Res Function(_Avatar) then) =
      __$AvatarCopyWithImpl<$Res, _Avatar>;
  @useResult
  $Res call({String? avatar, String? storycard});
}

/// @nodoc
class __$AvatarCopyWithImpl<$Res, $Val extends _Avatar>
    implements _$AvatarCopyWith<$Res> {
  __$AvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? storycard = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      storycard: freezed == storycard
          ? _value.storycard
          : storycard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__AvatarCopyWith<$Res> implements _$AvatarCopyWith<$Res> {
  factory _$$__AvatarCopyWith(
          _$__Avatar value, $Res Function(_$__Avatar) then) =
      __$$__AvatarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? avatar, String? storycard});
}

/// @nodoc
class __$$__AvatarCopyWithImpl<$Res>
    extends __$AvatarCopyWithImpl<$Res, _$__Avatar>
    implements _$$__AvatarCopyWith<$Res> {
  __$$__AvatarCopyWithImpl(_$__Avatar _value, $Res Function(_$__Avatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? storycard = freezed,
  }) {
    return _then(_$__Avatar(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      storycard: freezed == storycard
          ? _value.storycard
          : storycard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Avatar implements __Avatar {
  const _$__Avatar({required this.avatar, required this.storycard});

  factory _$__Avatar.fromJson(Map<String, dynamic> json) =>
      _$$__AvatarFromJson(json);

  @override
  final String? avatar;
  @override
  final String? storycard;

  @override
  String toString() {
    return '_Avatar(avatar: $avatar, storycard: $storycard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Avatar &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.storycard, storycard) ||
                other.storycard == storycard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, storycard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__AvatarCopyWith<_$__Avatar> get copyWith =>
      __$$__AvatarCopyWithImpl<_$__Avatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__AvatarToJson(
      this,
    );
  }
}

abstract class __Avatar implements _Avatar {
  const factory __Avatar(
      {required final String? avatar,
      required final String? storycard}) = _$__Avatar;

  factory __Avatar.fromJson(Map<String, dynamic> json) = _$__Avatar.fromJson;

  @override
  String? get avatar;
  @override
  String? get storycard;
  @override
  @JsonKey(ignore: true)
  _$$__AvatarCopyWith<_$__Avatar> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  List<_PrimaryImage> get otherAssets => throw _privateConstructorUsedError;
  _PrimaryImage get primaryImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call({List<_PrimaryImage> otherAssets, _PrimaryImage primaryImage});

  _$PrimaryImageCopyWith<$Res> get primaryImage;
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
              as List<_PrimaryImage>,
      primaryImage: null == primaryImage
          ? _value.primaryImage
          : primaryImage // ignore: cast_nullable_to_non_nullable
              as _PrimaryImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$PrimaryImageCopyWith<$Res> get primaryImage {
    return _$PrimaryImageCopyWith<$Res>(_value.primaryImage, (value) {
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
  $Res call({List<_PrimaryImage> otherAssets, _PrimaryImage primaryImage});

  @override
  _$PrimaryImageCopyWith<$Res> get primaryImage;
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
              as List<_PrimaryImage>,
      primaryImage: null == primaryImage
          ? _value.primaryImage
          : primaryImage // ignore: cast_nullable_to_non_nullable
              as _PrimaryImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {final List<_PrimaryImage> otherAssets = const [],
      required this.primaryImage})
      : _otherAssets = otherAssets;

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  final List<_PrimaryImage> _otherAssets;
  @override
  @JsonKey()
  List<_PrimaryImage> get otherAssets {
    if (_otherAssets is EqualUnmodifiableListView) return _otherAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherAssets);
  }

  @override
  final _PrimaryImage primaryImage;

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
      {final List<_PrimaryImage> otherAssets,
      required final _PrimaryImage primaryImage}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  List<_PrimaryImage> get otherAssets;
  @override
  _PrimaryImage get primaryImage;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}

_PrimaryImage _$_PrimaryImageFromJson(Map<String, dynamic> json) {
  return __PrimaryImage.fromJson(json);
}

/// @nodoc
mixin _$_PrimaryImage {
  String? get id => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  _Avatar? get source => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  int? get videoLength => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PrimaryImageCopyWith<_PrimaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PrimaryImageCopyWith<$Res> {
  factory _$PrimaryImageCopyWith(
          _PrimaryImage value, $Res Function(_PrimaryImage) then) =
      __$PrimaryImageCopyWithImpl<$Res, _PrimaryImage>;
  @useResult
  $Res call(
      {String? id,
      String? path,
      _Avatar? source,
      String? videoId,
      int? videoLength,
      String? title,
      String? name,
      String? description,
      String? caption});

  _$AvatarCopyWith<$Res>? get source;
}

/// @nodoc
class __$PrimaryImageCopyWithImpl<$Res, $Val extends _PrimaryImage>
    implements _$PrimaryImageCopyWith<$Res> {
  __$PrimaryImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? source = freezed,
    Object? videoId = freezed,
    Object? videoLength = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as _Avatar?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$AvatarCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return _$AvatarCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__PrimaryImageCopyWith<$Res>
    implements _$PrimaryImageCopyWith<$Res> {
  factory _$$__PrimaryImageCopyWith(
          _$__PrimaryImage value, $Res Function(_$__PrimaryImage) then) =
      __$$__PrimaryImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? path,
      _Avatar? source,
      String? videoId,
      int? videoLength,
      String? title,
      String? name,
      String? description,
      String? caption});

  @override
  _$AvatarCopyWith<$Res>? get source;
}

/// @nodoc
class __$$__PrimaryImageCopyWithImpl<$Res>
    extends __$PrimaryImageCopyWithImpl<$Res, _$__PrimaryImage>
    implements _$$__PrimaryImageCopyWith<$Res> {
  __$$__PrimaryImageCopyWithImpl(
      _$__PrimaryImage _value, $Res Function(_$__PrimaryImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? source = freezed,
    Object? videoId = freezed,
    Object? videoLength = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? caption = freezed,
  }) {
    return _then(_$__PrimaryImage(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as _Avatar?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__PrimaryImage implements __PrimaryImage {
  const _$__PrimaryImage(
      {required this.id,
      required this.path,
      required this.source,
      required this.videoId,
      required this.videoLength,
      required this.title,
      required this.name,
      required this.description,
      required this.caption});

  factory _$__PrimaryImage.fromJson(Map<String, dynamic> json) =>
      _$$__PrimaryImageFromJson(json);

  @override
  final String? id;
  @override
  final String? path;
  @override
  final _Avatar? source;
  @override
  final String? videoId;
  @override
  final int? videoLength;
  @override
  final String? title;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? caption;

  @override
  String toString() {
    return '_PrimaryImage(id: $id, path: $path, source: $source, videoId: $videoId, videoLength: $videoLength, title: $title, name: $name, description: $description, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__PrimaryImage &&
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
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, source, videoId,
      videoLength, title, name, description, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__PrimaryImageCopyWith<_$__PrimaryImage> get copyWith =>
      __$$__PrimaryImageCopyWithImpl<_$__PrimaryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__PrimaryImageToJson(
      this,
    );
  }
}

abstract class __PrimaryImage implements _PrimaryImage {
  const factory __PrimaryImage(
      {required final String? id,
      required final String? path,
      required final _Avatar? source,
      required final String? videoId,
      required final int? videoLength,
      required final String? title,
      required final String? name,
      required final String? description,
      required final String? caption}) = _$__PrimaryImage;

  factory __PrimaryImage.fromJson(Map<String, dynamic> json) =
      _$__PrimaryImage.fromJson;

  @override
  String? get id;
  @override
  String? get path;
  @override
  _Avatar? get source;
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
  @JsonKey(ignore: true)
  _$$__PrimaryImageCopyWith<_$__PrimaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

_Storyteller _$_StorytellerFromJson(Map<String, dynamic> json) {
  return __Storyteller.fromJson(json);
}

/// @nodoc
mixin _$_Storyteller {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  _Avatar get avatar => throw _privateConstructorUsedError;
  bool get followed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StorytellerCopyWith<_Storyteller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StorytellerCopyWith<$Res> {
  factory _$StorytellerCopyWith(
          _Storyteller value, $Res Function(_Storyteller) then) =
      __$StorytellerCopyWithImpl<$Res, _Storyteller>;
  @useResult
  $Res call(
      {String id,
      String path,
      String name,
      String displayName,
      _Avatar avatar,
      bool followed});

  _$AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$StorytellerCopyWithImpl<$Res, $Val extends _Storyteller>
    implements _$StorytellerCopyWith<$Res> {
  __$StorytellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
    Object? displayName = null,
    Object? avatar = null,
    Object? followed = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as _Avatar,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$AvatarCopyWith<$Res> get avatar {
    return _$AvatarCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__StorytellerCopyWith<$Res>
    implements _$StorytellerCopyWith<$Res> {
  factory _$$__StorytellerCopyWith(
          _$__Storyteller value, $Res Function(_$__Storyteller) then) =
      __$$__StorytellerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      String name,
      String displayName,
      _Avatar avatar,
      bool followed});

  @override
  _$AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$__StorytellerCopyWithImpl<$Res>
    extends __$StorytellerCopyWithImpl<$Res, _$__Storyteller>
    implements _$$__StorytellerCopyWith<$Res> {
  __$$__StorytellerCopyWithImpl(
      _$__Storyteller _value, $Res Function(_$__Storyteller) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
    Object? displayName = null,
    Object? avatar = null,
    Object? followed = null,
  }) {
    return _then(_$__Storyteller(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as _Avatar,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Storyteller implements __Storyteller {
  const _$__Storyteller(
      {required this.id,
      required this.path,
      required this.name,
      required this.displayName,
      required this.avatar,
      required this.followed});

  factory _$__Storyteller.fromJson(Map<String, dynamic> json) =>
      _$$__StorytellerFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final _Avatar avatar;
  @override
  final bool followed;

  @override
  String toString() {
    return '_Storyteller(id: $id, path: $path, name: $name, displayName: $displayName, avatar: $avatar, followed: $followed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Storyteller &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.followed, followed) ||
                other.followed == followed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, path, name, displayName, avatar, followed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__StorytellerCopyWith<_$__Storyteller> get copyWith =>
      __$$__StorytellerCopyWithImpl<_$__Storyteller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__StorytellerToJson(
      this,
    );
  }
}

abstract class __Storyteller implements _Storyteller {
  const factory __Storyteller(
      {required final String id,
      required final String path,
      required final String name,
      required final String displayName,
      required final _Avatar avatar,
      required final bool followed}) = _$__Storyteller;

  factory __Storyteller.fromJson(Map<String, dynamic> json) =
      _$__Storyteller.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get name;
  @override
  String get displayName;
  @override
  _Avatar get avatar;
  @override
  bool get followed;
  @override
  @JsonKey(ignore: true)
  _$$__StorytellerCopyWith<_$__Storyteller> get copyWith =>
      throw _privateConstructorUsedError;
}
