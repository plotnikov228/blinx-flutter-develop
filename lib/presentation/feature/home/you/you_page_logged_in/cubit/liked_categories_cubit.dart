import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/usecases/categories/get_liked_categories_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'liked_categories_state.dart';
part 'liked_categories_cubit.freezed.dart';

@injectable
class LikedCategoriesCubit extends Cubit<LikedCategoriesState> {
  LikedCategoriesCubit(this._getLikedCategoriesUseCase)
      : super(const LikedCategoriesState());

  final GetLikedCategoriesUseCase _getLikedCategoriesUseCase;

  void loadLikedCategories({bool showShimmer = true}) {
    if (state.status.isLoading) {
      return;
    }

    _getLikedCategoriesUseCase().then((likedCategoriesList) {
      final defaultSelectedCategory = Category.all();
      final categoryList = [defaultSelectedCategory, ...likedCategoriesList];

      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          selectedCategory: defaultSelectedCategory,
          likedCategoriesList: categoryList,
        ),
      );
    }).onError((error, stackTrace) {
      emit(
        state.copyWith(
          status: BaseStatus.failure(
            ResponseError.from(error!),
          ),
        ),
      );
    });
  }

  void setSelectedCategory(Category category) {
    emit(state.copyWith(selectedCategory: category));
  }
}
