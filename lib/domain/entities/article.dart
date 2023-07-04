import 'dart:math';

import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/entities/storyteller.dart';
import 'package:blinx/domain/entities/media.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blinx/domain/entities/component.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const Article._();

  const factory Article({
    @Default('') String id,
    @Default('') String title,
    @Default('') String path,
    String? htmlContent,
    DateTime? created,
    DateTime? publishDate,
    List<Storyteller>? storytellers,
    @Default([Category(
      id: '0',
      path: '',
      displayName: 'default',
      name: 'default',
    )]) List<Category> categories,
    String? template,
    @Default('') String description,
    @Default(false) bool isHero,
    @Default(false) bool isTrending,
    @Default(false) bool isTopStories,
    @Default(false) bool isLiked,
    @Default(0) int totalLikes,
    @Default(0) int totalComments,
    String? layout,
    @Default('') String articleType,
    Media? media,
  }) = _Article;

  List<Component> get layoutComponent => parseComponent(layout);

  bool get hasVideo => videoId != null;

  bool get isReels => articleType == 'blinx';

  String? get videoId => media!.primaryImage.videoId;

  int get videoLength => media!.primaryImage.videoLength??0;

  String get imageUrl => injector.get<AppFlavor>().baseImageUrl+media!.primaryImage.source!.original;

  String get mobileHero => injector.get<AppFlavor>().baseImageUrl+media!.primaryImage.source!.mobileHero;

  String get mobileArticle => injector.get<AppFlavor>().baseImageUrl+media!.primaryImage.source!.mobileArticle;

  String get mobileArticleSmall => injector.get<AppFlavor>().baseImageUrl+media!.primaryImage.source!.mobileArticleSmall;

  String get mobileBlinx {

    try {
      return injector.get<AppFlavor>().baseImageUrl+media!.primaryImage.source!.mobileBlinx;
    }catch(e) {
      return '';
    }
  }

  String get authorName => storytellers==null||storytellers!.isEmpty?'':storytellers!.first.displayName;

  List<PrimaryImage> get otherAssets => media?.otherAssets??[];

  String get articleWebUrl {
    final baseUrl = injector.get<AppFlavor>().baseFrontendUrl;
    return isReels?'$baseUrl/blinx$path':baseUrl + categories.first.path + path;
  }

  bool get isTemplate1 => template == 'template1' || template == null;

  bool get isTemplate2 => template == 'template2' && template != null;

  bool get isTemplate3 => template == 'template3' && template != null;

  bool get isDynamic => template == 'dynamic' && template != null;

  factory Article.simple(String image, [int? index]) {
    final _random = Random.secure();
    final titleNumber = _random.nextInt(30);
    final titleMultiplier = _random.nextInt(2) + 1;
    final category = _random.nextInt(10);
    final id = index ?? (titleNumber + category);
    return Article(
      id: id.toString(),
      title: 'Article title will be here',
      path: 'exclusive--american-airlines-reveals-new-business-class-and-premium-economy-seats',
      categories: [Category.random(id)],
      template: 'template1',
      htmlContent: '<p> this is content </p>',
      storytellers: [],
      created: DateTime.now(),
      publishDate: DateTime.now(),
      isHero: titleMultiplier % 2 == 0,
      isTrending: titleMultiplier % 2 == 0,
      isTopStories: titleMultiplier % 2 == 1,
      isLiked: false,
      description: '',
    );
  }

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}