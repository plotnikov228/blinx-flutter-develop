import 'package:blinx/data/services/http_service/categories/data_source/remote/categories_remote_data_source.dart';
import 'package:blinx/data/services/request_objects/categories/liked_categories_request_body.dart';
import 'package:blinx/data/services/request_objects/categories/replace_categories_request_body.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/repostories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImpl extends CategoriesRepository {
  CategoriesRepositoryImpl(this._categoriesRemoteDataSource);

  final CategoriesRemoteDataSource _categoriesRemoteDataSource;

  @override
  Future<List<Category>> getLikedCategories() async {
    final categoriesResponse =
        await _categoriesRemoteDataSource.getLikedCategories();

    return categoriesResponse;
  }

  @override
  Future<List<Category>> getAllCategories() async {
    final categoriesResponse =
        await _categoriesRemoteDataSource.getAllCategories();

    return categoriesResponse;
  }

  @override
  Future<List<Category>> likeCategories(
      LikedCategoriesRequestBody likedCategoriesBody) async {
    final categoriesResponse =
        await _categoriesRemoteDataSource.likeCategories(likedCategoriesBody);

    return categoriesResponse;
  }

  @override
  Future<void> replaceLikedCategories(
      ReplaceCategoriesRequestBody replaceCategoriesBody) {
    return _categoriesRemoteDataSource
        .replaceLikedCategories(replaceCategoriesBody);
  }
}
