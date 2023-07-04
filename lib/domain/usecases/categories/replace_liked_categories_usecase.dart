import 'package:blinx/data/services/request_objects/categories/replace_categories_request_body.dart';
import 'package:blinx/domain/repostories/categories_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReplaceLikedCategoriesUseCase
    extends UseCase<ReplaceCategoriesRequestBody, Future<void>> {
  final CategoriesRepository _categoriesRepository;

  ReplaceLikedCategoriesUseCase(this._categoriesRepository);

  @override
  Future<void> call(ReplaceCategoriesRequestBody input) {
    return _categoriesRepository.replaceLikedCategories(input);
  }
}
