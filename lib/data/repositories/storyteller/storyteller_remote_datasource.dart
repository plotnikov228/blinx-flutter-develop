import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'storyteller_remote_datasource.g.dart';

@RestApi()
@Singleton()
abstract class StorytellerRemoteDatasource {
  @factoryMethod
  factory StorytellerRemoteDatasource(Dio dio) = _StorytellerRemoteDatasource;

  @GET('/storytellers/follow')
  Future<List<StorytellerWrapper>> getStoryTellers();

  @POST('/storytellers{path}/follow')
  Future<void> followStoryteller(@Path() String path);

  @DELETE('/storytellers{path}/follow')
  Future<void> unfollowStoryteller(@Path() String path);
}
