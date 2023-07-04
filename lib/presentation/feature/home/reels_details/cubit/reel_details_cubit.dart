import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/articles/like_article_usecase.dart';
import 'package:blinx/domain/usecases/articles/unlike_article_usecase.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reel_details_cubit.freezed.dart';

part 'reel_details_state.dart';

@injectable
class ReelDetailsCubit extends Cubit<ReelDetailsState> {
  ReelDetailsCubit(
    this._likeArticleUsecase,
    this._unlikeArticleUsecase,
  ) : super(const ReelDetailsState());

  final LikeArticleUsecase _likeArticleUsecase;
  final UnlikeArticleUsecase _unlikeArticleUsecase;

  void setData(List<Article> articles) {
    final data = {for (final e in articles) e.id: e};
    emit(state.copyWith(data: data));
  }

  void _updateArticleLikeState(Article article,context) {
    final updatedArticles = Map.of(state.data);

    updatedArticles.update(
        article.id,
        (value) => value.copyWith(
              isLiked: !value.isLiked,
            ));

    injector.get<ReelsCubit>().loadReels(showShimmer: false);

    emit(state.copyWith(data: updatedArticles));
  }

  void likeOrUnlikeReel(Article article,context) {
    _updateArticleLikeState(article,context);

    emit(state.copyWith(status: const BaseStatus.loading()));

    if (article.isLiked) {
      _unlikeArticleUsecase(article);
    } else {
      _likeArticleUsecase(article);
    }
  }
}
