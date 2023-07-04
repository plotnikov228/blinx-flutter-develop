import 'package:blinx/data/services/request_objects/categories/liked_categories_request_body.dart';
import 'package:blinx/data/services/request_objects/categories/replace_categories_request_body.dart';
import 'package:blinx/domain/entities/category.dart';

abstract class CategoriesRepository {
  Future<List<Category>> getLikedCategories();

  Future<List<Category>> getAllCategories();

  Future<List<Category>> likeCategories(
      LikedCategoriesRequestBody likedCategoriesBody);

  Future<void> replaceLikedCategories(
      ReplaceCategoriesRequestBody replaceCategoriesBody);
}
