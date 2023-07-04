import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/articles/ui/article_comments/article_comments.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_details_icon_button.dart';
import 'package:blinx/presentation/feature/home/cubit/comments/comments_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/like_article_cubit.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleHeartIconButton extends StatelessWidget {
  const ArticleHeartIconButton({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    final authPreferences = injector.get<AuthPreferences>();

    return BlocBuilder<LikeArticleCubit, LikeArticleState>(
      builder: (context, state) {
        final isLikedbyUser = state.isLikedByUser(article.id);
        return ArticleDetailsIconButton(
          onPressed: () {
            if (!authPreferences.isLoggedIn()) {
              context.navigateToLoginScreen();
            } else {
              context.read<LikeArticleCubit>().likeOrUnlikeReel(article,context);
            }
          },
          icon: isLikedbyUser
              ? Assets.icons.heartFilled.svg(height: 21.6, width: 21.6)
              : Assets.icons.heartOutlined.svg(height: 21.6, width: 21.6),
        );
      },
    );
  }
}

class ArticleCommentsIconButton extends StatelessWidget {
  const ArticleCommentsIconButton({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    final authPreferences = injector.get<AuthPreferences>();
    final userPreferences = injector.get<UserPreferences>();
    final commentsCubit = CommentsCubit(
      context,
      authPreferences,
      [],
      article.path,
      userPreferences,
    );
    return BlocProvider<CommentsCubit>(
      create: (_) {
        return commentsCubit;
      },
      child: BlocBuilder<CommentsCubit, CommentsState>(
        builder: (context, state) {
          return Row(
            children: [
              Text(
                state.comments.length.toString(),
                style: commentsCountStyle(),
              ),
              ArticleDetailsIconButton(
                onPressed: () {
                    context.router.pushWidget(
                      BlocProvider.value(
                        value: BlocProvider.of<CommentsCubit>(context),
                        child: const ArticleComments(),
                      ),
                    );
                },
                icon: Assets.icons.commentsIcon.svg(height: 20, width: 20),
              ),
            ],
          );
        },
      ),
    );
  }

  TextStyle commentsCountStyle() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }
}
