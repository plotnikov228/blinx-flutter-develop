import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/articles/get_category_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'get_category_articles_state.dart';

@injectable
class GetCategoryArticlesCubit extends Cubit<GetCategoryArticlesState> {
  GetCategoryArticlesCubit(this._categoryArticlesUseCase, this._getLifeEditorChoiceUseCase, this._getNowEditorChoiceUseCase) : super(GetCategoryArticlesState());
  final GetCategoryArticlesUseCase _categoryArticlesUseCase;
  final GetLifeCategoryArticlesUseCase _getLifeEditorChoiceUseCase;
  final GetNowCategoryArticlesUseCase _getNowEditorChoiceUseCase;

  void getArticles(String categoryName) {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _categoryArticlesUseCase.call(categoryName).then((paginatedArticles) {
      emit(state.copyWith(
        paginatedArticles: paginatedArticles,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void getLifeArticles(String categoryName) {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _categoryArticlesUseCase.call(categoryName).then((paginatedArticles) {
      emit(state.copyWith(
        paginatedArticles: paginatedArticles,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void getNowEditorChoice(String categoryName) {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _categoryArticlesUseCase.call(categoryName).then((paginatedArticles) {
      emit(state.copyWith(
        paginatedArticles: paginatedArticles,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }
}
