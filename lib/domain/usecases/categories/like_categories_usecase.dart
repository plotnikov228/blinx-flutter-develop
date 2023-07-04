import 'package:blinx/data/services/request_objects/categories/liked_categories_request_body.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/repostories/categories_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class LikeCategoriesUseCase
    extends UseCase<LikedCategoriesRequestBody, Future<List<Category>>> {
  final CategoriesRepository _categoriesRepository;

  LikeCategoriesUseCase(this._categoriesRepository);

  @override
  Future<List<Category>> call(LikedCategoriesRequestBody input) {
    return _categoriesRepository.likeCategories(input);
  }
}
