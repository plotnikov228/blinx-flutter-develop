import 'package:blinx/domain/entities/article.dart';

import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/articles/get_liked_articles_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'get_liked_articles_state.dart';

@injectable
class GetLikedArticlesCubit extends Cubit<GetLikedArticlesState> {
   GetLikedArticlesCubit(this._getLikedArticlesUseCase) : super(GetLikedArticlesState());

  final GetLikedArticlesUseCase _getLikedArticlesUseCase;

  void getLikedArticles() {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _getLikedArticlesUseCase.call().then((articlesList) {
      emit(state.copyWith(
        likedArticles: articlesList.where((element) => !element.isReels).toList(),
        likedReels: articlesList.where((element) => element.isReels).toList(),
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void updateBlinxToPlay(List<Article> likedReels, List<Article> likedArticles){
    emit(state.copyWith(
        likedArticles: likedArticles,
        likedReels: likedReels,
        blinxToPlay: likedReels,
      ));
  }
}
