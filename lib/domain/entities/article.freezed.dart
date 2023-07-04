// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String? get htmlContent => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get publishDate => throw _privateConstructorUsedError;
  List<Storyteller>? get storytellers => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  String? get template => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isHero => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  bool get isTopStories => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  int get totalLikes => throw _privateConstructorUsedError;
  int get totalComments => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  String get articleType => throw _privateConstructorUsedError;
  Media? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String id,
      String title,
      String path,
      String? htmlContent,
      DateTime? created,
      DateTime? publishDate,
      List<Storyteller>? storytellers,
      List<Category> categories,
      String? template,
      String description,
      bool isHero,
      bool isTrending,
      bool isTopStories,
      bool isLiked,
      int totalLikes,
      int totalComments,
      String? layout,
      String articleType,
      Media? media});

  $MediaCopyWith<$Res>? get media;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? path = null,
    Object? htmlContent = freezed,
    Object? created = freezed,
    Object? publishDate = freezed,
    Object? storytellers = freezed,
    Object? categories = null,
    Object? template = freezed,
    Object? description = null,
    Object? isHero = null,
    Object? isTrending = null,
    Object? isTopStories = null,
    Object? isLiked = null,
    Object? totalLikes = null,
    Object? totalComments = null,
    Object? layout = freezed,
    Object? articleType = null,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      htmlContent: freezed == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storytellers: freezed == storytellers
          ? _value.storytellers
          : storytellers // ignore: cast_nullable_to_non_nullable
              as List<Storyteller>?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isHero: null == isHero
          ? _value.isHero
          : isHero // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopStories: null == isTopStories
          ? _value.isTopStories
          : isTopStories // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      articleType: null == articleType
          ? _value.articleType
          : articleType // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String path,
      String? htmlContent,
      DateTime? created,
      DateTime? publishDate,
      List<Storyteller>? storytellers,
      List<Category> categories,
      String? template,
      String description,
      bool isHero,
      bool isTrending,
      bool isTopStories,
      bool isLiked,
      int totalLikes,
      int totalComments,
      String? layout,
      String articleType,
      Media? media});

  @override
  $MediaCopyWith<$Res>? get media;
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$_Article>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? path = null,
    Object? htmlContent = freezed,
    Object? created = freezed,
    Object? publishDate = freezed,
    Object? storytellers = freezed,
    Object? categories = null,
    Object? template = freezed,
    Object? description = null,
    Object? isHero = null,
    Object? isTrending = null,
    Object? isTopStories = null,
    Object? isLiked = null,
    Object? totalLikes = null,
    Object? totalComments = null,
    Object? layout = freezed,
    Object? articleType = null,
    Object? media = freezed,
  }) {
    return _then(_$_Article(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      htmlContent: freezed == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storytellers: freezed == storytellers
          ? _value._storytellers
          : storytellers // ignore: cast_nullable_to_non_nullable
              as List<Storyteller>?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isHero: null == isHero
          ? _value.isHero
          : isHero // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopStories: null == isTopStories
          ? _value.isTopStories
          : isTopStories // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      articleType: null == articleType
          ? _value.articleType
          : articleType // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article extends _Article {
  const _$_Article(
      {this.id = '',
      this.title = '',
      this.path = '',
      this.htmlContent,
      this.created,
      this.publishDate,
      final List<Storyteller>? storytellers,
      final List<Category> categories = const [
        Category(id: '0', path: '', displayName: 'default', name: 'default')
      ],
      this.template,
      this.description = '',
      this.isHero = false,
      this.isTrending = false,
      this.isTopStories = false,
      this.isLiked = false,
      this.totalLikes = 0,
      this.totalComments = 0,
      this.layout,
      this.articleType = '',
      this.media})
      : _storytellers = storytellers,
        _categories = categories,
        super._();

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String path;
  @override
  final String? htmlContent;
  @override
  final DateTime? created;
  @override
  final DateTime? publishDate;
  final List<Storyteller>? _storytellers;
  @override
  List<Storyteller>? get storytellers {
    final value = _storytellers;
    if (value == null) return null;
    if (_storytellers is EqualUnmodifiableListView) return _storytellers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? template;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isHero;
  @override
  @JsonKey()
  final bool isTrending;
  @override
  @JsonKey()
  final bool isTopStories;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final int totalLikes;
  @override
  @JsonKey()
  final int totalComments;
  @override
  final String? layout;
  @override
  @JsonKey()
  final String articleType;
  @override
  final Media? media;

  @override
  String toString() {
    return 'Article(id: $id, title: $title, path: $path, htmlContent: $htmlContent, created: $created, publishDate: $publishDate, storytellers: $storytellers, categories: $categories, template: $template, description: $description, isHero: $isHero, isTrending: $isTrending, isTopStories: $isTopStories, isLiked: $isLiked, totalLikes: $totalLikes, totalComments: $totalComments, layout: $layout, articleType: $articleType, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            const DeepCollectionEquality()
                .equals(other._storytellers, _storytellers) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isHero, isHero) || other.isHero == isHero) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isTopStories, isTopStories) ||
                other.isTopStories == isTopStories) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.articleType, articleType) ||
                other.articleType == articleType) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        path,
        htmlContent,
        created,
        publishDate,
        const DeepCollectionEquality().hash(_storytellers),
        const DeepCollectionEquality().hash(_categories),
        template,
        description,
        isHero,
        isTrending,
        isTopStories,
        isLiked,
        totalLikes,
        totalComments,
        layout,
        articleType,
        media
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleToJson(
      this,
    );
  }
}

abstract class _Article extends Article {
  const factory _Article(
      {final String id,
      final String title,
      final String path,
      final String? htmlContent,
      final DateTime? created,
      final DateTime? publishDate,
      final List<Storyteller>? storytellers,
      final List<Category> categories,
      final String? template,
      final String description,
      final bool isHero,
      final bool isTrending,
      final bool isTopStories,
      final bool isLiked,
      final int totalLikes,
      final int totalComments,
      final String? layout,
      final String articleType,
      final Media? media}) = _$_Article;
  const _Article._() : super._();

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get path;
  @override
  String? get htmlContent;
  @override
  DateTime? get created;
  @override
  DateTime? get publishDate;
  @override
  List<Storyteller>? get storytellers;
  @override
  List<Category> get categories;
  @override
  String? get template;
  @override
  String get description;
  @override
  bool get isHero;
  @override
  bool get isTrending;
  @override
  bool get isTopStories;
  @override
  bool get isLiked;
  @override
  int get totalLikes;
  @override
  int get totalComments;
  @override
  String? get layout;
  @override
  String get articleType;
  @override
  Media? get media;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
