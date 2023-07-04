import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/articles/get_you_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'articles_by_categories_state.dart';
part 'articles_by_categories_cubit.freezed.dart';

@injectable
class ArticlesByCategoriesCubit extends Cubit<ArticlesByCategoriesState> {
  ArticlesByCategoriesCubit(this._getYouArticlesUseCase)
      : super(const ArticlesByCategoriesState());

  final GetYouArticlesUseCase _getYouArticlesUseCase;

  void getArticlesByCategory(
      {String categoryName = '', bool showShimmer = true}) {
    if (state.status.isLoading) {
      return;
    }

    if (showShimmer) {
      emit(state.copyWith(status: const BaseStatus.loading()));
    }

    _getYouArticlesUseCase(categoryName)
        .then(
          (articlesList) => emit(
            state.copyWith(
              status: const BaseStatus.success(),
              articlesList: articlesList,
            ),
          ),
        )
        .onError(
          (error, _) => emit(
            state.copyWith(
              status: BaseStatus.failure(ResponseError.from(error!)),
            ),
          ),
        );
  }
}
