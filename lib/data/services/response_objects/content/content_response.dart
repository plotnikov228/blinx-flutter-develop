import 'package:blinx/data/api/api_config.dart';
import 'package:blinx/data/services/response_objects/articles/articles_response.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/content/advertise.dart';
import 'package:blinx/injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/media.dart';

part 'content_response.freezed.dart';
part 'content_response.g.dart';

@freezed
class ContentResponse with _$ContentResponse {
  const ContentResponse._();

  const factory ContentResponse({
    @Default([]) List<Article> heros,
    @Default([]) List<Article> trending,
    @Default(ArticlesResponse(limit: 0, total: 0, offset: 0,results: [])) ArticlesResponse editorsChoice,
    @Default([]) List<Article> topStory,
    @Default([]) List<Article> reels,
    @Default([]) List<FAdvertise> advertises,
  }) = _ContentResponse;

  factory ContentResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentResponseFromJson(json);

  List<Advertise> getAdvertiseEntityList() {
    final baseImageUrl = injector<ApiConfig>().imageUrl;

    return advertises.map((item) {
      var image='';

      image = item.media.original;
      final imageUrl = baseImageUrl + image;

      return Advertise(
        id: item.id,
        image: imageUrl,
        name: item.name,
        url: item.url,
      );
    }).toList();
  }
}

@freezed
class FAdvertise with _$FAdvertise {
  const factory FAdvertise({
    required String id,
    required String path,
    required CoverImage media,
    required String name,
    required String url,
  }) = _FAdvertise;

  factory FAdvertise.fromJson(Map<String, dynamic> json) =>
      _$FAdvertiseFromJson(json);
}
