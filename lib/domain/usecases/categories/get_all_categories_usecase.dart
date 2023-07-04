import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/repostories/categories_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCategoriesUseCase extends FutureOutputUseCase<List<Category>> {
  final CategoriesRepository _categoriesRepository;

  GetAllCategoriesUseCase(this._categoriesRepository);

  @override
  Future<List<Category>> call() => _categoriesRepository.getAllCategories();
}
