import 'package:blinx/data/services/request_objects/categories/liked_categories_request_body.dart';
import 'package:blinx/data/services/request_objects/categories/replace_categories_request_body.dart';
import 'package:blinx/data/services/response_objects/categories/replace_categories_response.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'categories_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class CategoriesRemoteDataSource {
  @factoryMethod
  factory CategoriesRemoteDataSource(Dio dio) = _CategoriesRemoteDataSource;

  @GET('/categories/like')
  Future<List<Category>> getLikedCategories();

  @GET('/categories?renditions=original&type=category')
  Future<List<Category>> getAllCategories();

  @POST('/categories/like')
  Future<List<Category>> likeCategories(
    @Body() LikedCategoriesRequestBody body,
  );

  @PUT('/categories/replaceLikes')
  Future<ReplaceCategoriesResponse> replaceLikedCategories(
    @Body() ReplaceCategoriesRequestBody body,
  );
}
