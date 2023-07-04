import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/articles/article_like_usecase.dart';
import 'package:blinx/domain/usecases/articles/like_article_usecase.dart';
import 'package:blinx/domain/usecases/articles/unlike_article_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_cubit.dart';
import 'article_like_state.dart';

@injectable
class ArticlLikeCubit extends Cubit<ArticlLikeState> {
  ArticlLikeCubit(
    this._articleLikeUsecase,
    this._likeArticleUsecase,
    this._unlikeArticleUsecase,
  ) : super(const ArticlLikeState());
  final ArticleLikeUsecase _articleLikeUsecase;
  final LikeArticleUsecase _likeArticleUsecase;
  final UnlikeArticleUsecase _unlikeArticleUsecase;

  void get(String articlePath) {

    _articleLikeUsecase.call(articlePath).then((article) {
      emit(state.copyWith(
        isLiked: article.isLiked,
        totalLikes: article.totalLikes,
        storytellers: article.storytellers?.first,
      ));
    }).onError((error, stackTrace) {
      print(stackTrace);
    });
  }

  void likeOrUnlikeReel(Article article, bool isLiked, BuildContext context) {

    if (isLiked) {
      _unlikeArticleUsecase(article).then((newarticle) {
        context.read<GetLikedArticlesCubit>().getLikedArticles();
        emit(state.copyWith(
          isLiked: false,
          totalLikes: newarticle.totalLikes,
        ));
      }).onError((error, stackTrace) {
        print(stackTrace);
      });
    } else {
      _likeArticleUsecase(article).then((newarticle) {
        context.read<GetLikedArticlesCubit>().getLikedArticles();
        emit(state.copyWith(
          isLiked: true,
          totalLikes: newarticle.totalLikes,
        ));
      }).onError((error, stackTrace) {
        print(stackTrace);
      });
    }
  }
}
