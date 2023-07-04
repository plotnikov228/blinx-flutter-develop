import 'package:blinx/data/services/response_objects/reels/reels_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'reels_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class ReelsRemoteDataSource {
  @factoryMethod
  factory ReelsRemoteDataSource(Dio dio) = _ReelsRemoteDataSource;

  @GET('/contents/reels?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<ReelsResponse> getReels(@Query('page') int page);
}
