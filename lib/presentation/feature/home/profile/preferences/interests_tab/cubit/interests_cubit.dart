import 'package:blinx/data/services/request_objects/categories/replace_categories_request_body.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/domain/usecases/categories/get_all_categories_usecase.dart';
import 'package:blinx/domain/usecases/categories/get_liked_categories_usecase.dart';
import 'package:blinx/domain/usecases/categories/replace_liked_categories_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'interests_cubit.freezed.dart';
part 'interests_state.dart';

@injectable
class InterestsCubit extends Cubit<InterestsState> {
  InterestsCubit(
    this._getAllCategoriesUseCase,
    this._getLikedCategoriesUseCase,
    this._replaceLikedCategoriesUseCase,
  ) : super(const InterestsState());

  final GetAllCategoriesUseCase _getAllCategoriesUseCase;
  final GetLikedCategoriesUseCase _getLikedCategoriesUseCase;
  final ReplaceLikedCategoriesUseCase _replaceLikedCategoriesUseCase;

  void loadInterestsData() {
    _loadAllCategories();
    _loadLikedCategories();
  }

  void _loadAllCategories() {
    emit(state.copyWith(status: const BaseStatus.loading()));

    _getAllCategoriesUseCase.call().then((categories) {
      emit(state.copyWith(
          status: const BaseStatus.success(), allCategories: categories));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void _loadLikedCategories() {
    emit(state.copyWith(status: const BaseStatus.loading()));

    _getLikedCategoriesUseCase.call().then((categories) {
      emit(state.copyWith(
          status: const BaseStatus.success(),
          likedCategories: {for (final e in categories) e.id: e.path}));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void likeUnlikeCategory(Category category) {
    final likedCategories = Map.of(state.likedCategories);
    if (likedCategories.containsKey(category.id)) {
      likedCategories.remove(category.id);
    } else {
      likedCategories[category.id] = category.path;
    }
    emit(state.copyWith(likedCategories: likedCategories));
  }

  void saveSelections() {
    if (state.status.isLoading) {
      return;
    }

    emit(state.copyWith(status: const BaseStatus.loading()));

    final replaceLikedCategoriesBody =
        ReplaceCategoriesRequestBody(categories: state.selectedCategories);

    _replaceLikedCategoriesUseCase.call(replaceLikedCategoriesBody).then((_) {
      emit(state.copyWith(
        status: const BaseStatus.valid(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }
}
