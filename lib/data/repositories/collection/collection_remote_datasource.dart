import 'package:blinx/domain/entities/collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'collection_remote_datasource.g.dart';

@RestApi()
@Singleton()
abstract class CollectionRemoteDatasource {
  @factoryMethod
  factory CollectionRemoteDatasource(Dio dio) = _CollectionRemoteDatasource;

  @GET('/collections')
  Future<List<Collection>> getCollections();

  @POST('/collections')
  Future<Collection> createCollection(@Body() Collection collection);

  @DELETE('/collections/{id}')
  Future<void> deleteCollection(@Path() int id);

  @POST('/collections/{id}/toggle_articles{path}')
  Future<void> addArticleToCollection(@Path() int id, @Path() String path);

  @DELETE('/collections/{id}/toggle_articles{path}')
  Future<void> deleteArticleFromCollection(@Path() int id, @Path() String path);

  @PUT('/collections/{id}')
  Future<Collection> renameCollection(
      @Path() int id, @Body() Collection collection);
}
