import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/articles/get_storyteller_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'storytellers_articles_state.dart';
part 'storytellers_articles_cubit.freezed.dart';

@injectable
class StorytellerArticlesCubit extends Cubit<StorytellerArticlesState> {
  StorytellerArticlesCubit(this._getStorytellersArticlesUseCase)
      : super(const StorytellerArticlesState());

  final GetStorytellersArticlesUseCase _getStorytellersArticlesUseCase;

  void getStorytellerArticles(String path) {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _getStorytellersArticlesUseCase(path).then((articles) {
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
