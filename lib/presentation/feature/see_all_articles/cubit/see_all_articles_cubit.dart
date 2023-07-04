import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/domain/usecases/articles/get_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'see_all_articles_state.dart';
part 'see_all_articles_cubit.freezed.dart';

@injectable
class SeeAllArticlesCubit extends Cubit<SeeAllArticlesState> {
  SeeAllArticlesCubit(this._getArticlesUseCase)
      : super(
          const SeeAllArticlesState(),
        );

  final GetArticlesUseCase _getArticlesUseCase;

  void loadArticles() {
    if (state.status.isLoading) {
      return;
    }

    emit(state.copyWith(status: const BaseStatus.loading()));

    _getArticlesUseCase().then(
      (paginatedArticles) {
        emit(
          state.copyWith(
            paginatedArticles: paginatedArticles,
            status: const BaseStatus.success(),
          ),
        );
      },
    ).onError(
      (error, _) {
        emit(
          state.copyWith(
              status: BaseStatus.failure(ResponseError.from(error!))),
        );
      },
    );
  }

  void loadMoreArticles() {
    if (state.status.isLazyLoading) {
      return;
    }

    if (state.hasMoreContents) {
      final nextPage = state.nextPage;

      emit(state.copyWith(status: const BaseStatus.lazyLoading()));

      _getArticlesUseCase.call(input: nextPage).then(
        (paginatedArticles) {
          final previousArticles = state.paginatedArticles.articlesList;
          final newArticles = paginatedArticles.articlesList;
          final newArticlesList = [...previousArticles, ...newArticles];

          final mergedPaginatedArticles = paginatedArticles.copyWith(
            articlesList: newArticlesList,
          );

          emit(
            state.copyWith(
              status: const BaseStatus.success(),
              paginatedArticles: mergedPaginatedArticles,
            ),
          );
        },
      ).onError(
        (error, _) {
          emit(
            state.copyWith(
              status: BaseStatus.failure(ResponseError.from(error!)),
            ),
          );
        },
      );
    }
  }
}
