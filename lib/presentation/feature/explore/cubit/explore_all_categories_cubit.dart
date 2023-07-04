import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/usecases/categories/get_all_categories_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'explore_all_categories_state.dart';
part 'explore_all_categories_cubit.freezed.dart';

@injectable
class ExploreAllCategoriesCubit extends Cubit<ExploreAllCategoriesState> {
  ExploreAllCategoriesCubit(this._getAllCategoriesUseCase)
      : super(
          const ExploreAllCategoriesState(),
        );

  final GetAllCategoriesUseCase _getAllCategoriesUseCase;

  void loadAllCategories() {
    if (state.status.isLoading) {
      return;
    }

    emit(state.copyWith(status: const BaseStatus.loading()));

    _getAllCategoriesUseCase()
        .then(
          (categoriesList) => emit(
            state.copyWith(
              status: const BaseStatus.success(),
              categoriesList: categoriesList,
            ),
          ),
        )
        .onError(
          (error, stackTrace) => {
            emit(
              state.copyWith(
                status: BaseStatus.failure(
                  ResponseError.from(error!),
                ),
              ),
            ),
          },
        );
  }

  void setSelectedIndex(int index) =>
      emit(state.copyWith(selectedCategoryIndex: index));
}
