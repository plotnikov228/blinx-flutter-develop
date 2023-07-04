import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/articles/get_collection_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'collections_articles_cubit.freezed.dart';
part 'collections_articles_state.dart';

@injectable
class CollectionsArticlesCubit extends Cubit<CollectionsArticlesState> {
  CollectionsArticlesCubit(this._getCollectionsArticlesUseCase)
      : super(const CollectionsArticlesState());

  final GetCollectionsArticlesUseCase _getCollectionsArticlesUseCase;

  void getCollectionArticles(int id) {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _getCollectionsArticlesUseCase(id).then((articles) {
      emit(state.copyWith(
        articlesList: articles,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }
}
