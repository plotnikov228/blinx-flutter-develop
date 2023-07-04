import 'package:blinx/data/services/response_objects/moments/moments_response.dart';
import 'package:blinx/domain/services/moments_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'base_moments_service.g.dart';

@RestApi()
@LazySingleton(as: MomentsService)
abstract class BaseMomentsService extends MomentsService {
  @factoryMethod
  factory BaseMomentsService(Dio dio) = _BaseMomentsService;

  @override
  @GET('/moments?renditions=avatar,storycard')
  Future<List<MomentsResponse>> getMoments();

  @override
  @POST('/moments/{momentPath}')
  Future<void> markMomentAsSeen(@Path() String momentPath);

  @override
  @POST('/articles/{momentPath}/like')
  Future<void> likeMoment(@Path() String momentPath);

  @override
  @DELETE('/articles/{momentPath}/like')
  Future<void> unlikeMoment(@Path() String momentPath);
}
