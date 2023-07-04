import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/usecases/articles/get_all_liked_articles_usecase.dart';
import 'package:blinx/domain/usecases/articles/like_article_usecase.dart';
import 'package:blinx/domain/usecases/articles/unlike_article_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_cubit.dart';

part 'like_article_state.dart';
part 'like_article_cubit.freezed.dart';

@injectable
class LikeArticleCubit extends Cubit<LikeArticleState> {
  LikeArticleCubit(
    this._likeArticleUsecase,
    this._unlikeArticleUsecase,
    this._getAllLikedArticlesUseCase,
    this._authPreferences,
  ) : super(const LikeArticleState()) {
    _loadAuthState();
  }

  final LikeArticleUsecase _likeArticleUsecase;
  final UnlikeArticleUsecase _unlikeArticleUsecase;
  final GetAllLikedArticlesUseCase _getAllLikedArticlesUseCase;
  final AuthPreferences _authPreferences;

  void _loadLikedArticles() {
    if (!_authPreferences.isLoggedIn()) {
      return;
    }

    if (!state.status.isLoading) {
      emit(state.copyWith(status: const BaseStatus.loading()));

      _getAllLikedArticlesUseCase().then((likedArticles) {
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            likedItems: {for (final e in likedArticles) e.id: true},
          ),
        );
      }).onError(
        (error, _) => emit(
          state.copyWith(
            status: BaseStatus.failure(ResponseError.from(error!)),
          ),
        ),
      );
    }
  }

  void _loadAuthState() {
    _authPreferences.subscribeToLoginState().listen((isAuthenticated) {
      if (isAuthenticated) {
        _loadLikedArticles();
      } else {
        emit(
          state.copyWith(
            likedItems: {},
          ),
        );
      }
    });
  }

  void likeOrUnlikeReel(Article article, BuildContext context) async {
    if (!_authPreferences.isLoggedIn()) {
      return;
    }

    final updatedLikedItems = Map.of(state.likedItems);

    if (updatedLikedItems.containsKey(article.id)) {
      updatedLikedItems.remove(article.id);
      emit(state.copyWith(likedItems: updatedLikedItems));

      emit(state.copyWith(status: const BaseStatus.loading()));
      await _unlikeArticleUsecase(article).then((_){
        context.read<GetLikedArticlesCubit>().getLikedArticles();
      });
    } else {
      updatedLikedItems[article.id] = true;
      emit(state.copyWith(likedItems: updatedLikedItems));

      emit(state.copyWith(status: const BaseStatus.loading()));
      await _likeArticleUsecase(article).then((_){
        context.read<GetLikedArticlesCubit>().getLikedArticles();
      });
    }
  }
}
