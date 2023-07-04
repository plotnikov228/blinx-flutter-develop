import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/domain/usecases/explore/search_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'explore_search_state.dart';
part 'explore_search_cubit.freezed.dart';

@injectable
class ExploreSearchCubit extends Cubit<ExploreSearchState> {
  ExploreSearchCubit(this._searchArticlesUseCase)
      : super(const ExploreSearchState());

  final SearchArticlesUseCase _searchArticlesUseCase;

  void searchArticles({required String query}) {
    if (state.status.isLoading) {
      return;
    }

    final searchArticlesInput = SearchArticlesInput(
      query: query.trim(),
    );

    emit(state.copyWith(status: const BaseStatus.loading()));

    _searchArticlesUseCase(searchArticlesInput).then(
      (paginatedArticles) {
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
            searchQuery: query,
            categories: null,
            paginatedArticles: paginatedArticles,
          ),
        );

        return sortBy(state.sortByType.index);
      },
    ).onError(
      (error, stackTrace) => emit(
        state.copyWith(
          status: BaseStatus.failure(
            ResponseError.from(error!),
          ),
        ),
      ),
    );
  }

  void loadMoreSearchResults() {
    if (state.status.isLazyLoading) {
      return;
    }

    if (state.hasMoreContents) {
      final searchArticlesInput = SearchArticlesInput(
        query: state.searchQuery,
        categories: state.categories,
        page: state.nextPage,
      );

      emit(state.copyWith(status: const BaseStatus.lazyLoading()));

      _searchArticlesUseCase(searchArticlesInput).then(
        (paginatedArticles) {
          final newPaginatedArticles = PaginatedArticles(
            currentPage: paginatedArticles.currentPage,
            total: paginatedArticles.total,
            articlesList: [
              ...(state.paginatedArticles?.articlesList ?? []),
              ...paginatedArticles.articlesList
            ],
          );

          emit(
            state.copyWith(
              status: const BaseStatus.success(),
              paginatedArticles: newPaginatedArticles,
            ),
          );

          return sortBy(state.sortByType.index);
        },
      ).onError(
        (error, stackTrace) => emit(
          state.copyWith(
            status: BaseStatus.failure(
              ResponseError.from(error!),
            ),
          ),
        ),
      );
    }
  }

  void searchArticlesWithCategories({required String categories}) {
    if (state.status.isLazyLoading) {
      return;
    }

    final searchArticlesInput = SearchArticlesInput(
      query: state.searchQuery.trim(),
      categories: categories,
    );

    emit(state.copyWith(status: const BaseStatus.lazyLoading()));

    _searchArticlesUseCase(searchArticlesInput).then(
      (paginatedArticles) {
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
            categories: categories,
            paginatedArticles: paginatedArticles,
          ),
        );

        return sortBy(state.sortByType.index);
      },
    ).onError(
      (error, stackTrace) => emit(
        state.copyWith(
          status: BaseStatus.failure(
            ResponseError.from(error!),
          ),
        ),
      ),
    );
  }

  void sortBy(int index) {
    if (state.paginatedArticles != null) {
      var articleList =
          List<Article>.from(state.paginatedArticles!.articlesList);

      try {

        if (index == SortBy.newestToOldest.index) {
          articleList.sort((a, b) => b.publishDate!.compareTo(a.publishDate!));
        } else {
          articleList.sort((a, b) => a.publishDate!.compareTo(b.publishDate!));
        }
      }catch(e) { }

      Future.microtask(
        () => emit(
          state.copyWith(
            paginatedArticles: state.paginatedArticles!.copyWith(
              articlesList: articleList,
            ),
            sortByType: SortBy.values[index],
          ),
        ),
      );
    }
  }
}
