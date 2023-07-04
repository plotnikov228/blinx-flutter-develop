import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_details_icon_button.dart';
import 'package:blinx/presentation/feature/articles/ui/save_to_collection_dialog.dart';
import 'package:blinx/presentation/feature/home/cubit/like_article_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleAddCollectionButton extends StatelessWidget {
  const ArticleAddCollectionButton({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikeArticleCubit, LikeArticleState>(
      builder: (context, state) {
        return ArticleDetailsIconButton(
          onPressed: () {
              final authPreferences = injector.get<AuthPreferences>();

              if (authPreferences.isLoggedIn()) {
                _showSaveToCollectionDialog(context);
              } else {
                context.navigateToLoginScreen();
              }

            },
            icon: Assets.icons.iconCollectionsaddToCollection.svg(color: context.colors.white, height: 21.6, width: 21.6)
        );
      },
    );
  }

  void _showSaveToCollectionDialog(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => SaveToCollectionDialog(
          article: article,
        ),
      );
}
