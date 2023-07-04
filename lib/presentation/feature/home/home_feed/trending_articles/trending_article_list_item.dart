import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/articles/article_screen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';


class TrendingArticleListItem extends StatelessWidget {
  TrendingArticleListItem({
    Key? key,
    this.size,
    required this.article,
  }) : super(key: key);

  final Article article;
  final Size? size;

  final heroC=HeroController();

  @override
  Widget build(BuildContext context) {
    const widgetWidth = 332.5;
    const widgetHeight = (9/16) * widgetWidth ; // Keep the ratio for 1920x1080;
    final tag=article.path+Random().nextInt(999999999).toString()+Random().nextInt(999999999).toString();

    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          /*Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  pageBuilder: (_, __, ___) => ArticleScreen(
                    article: article,
                    tag: tag,
                  )));*/
          context.router.push(
              ArticleScreenRoute(
            article: article,
                tag: tag,
          )
          );
        },
        child: SizedBox(
          width: widgetWidth,
          height: widgetHeight,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                        stops: const [0, .3, 1.0],
                        colors: [
                          context.colors.black.withOpacity(.95),
                          context.colors.black.withOpacity(.4),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Hero(
                      tag: tag,
                      child: AppNetworkImage(
                        imageUrl: article.mobileArticle,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ),
              PositionedDirectional(
                bottom: 0,
                start: 16,
                end: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadiusDirectional.only(
                              topStart: Radius.circular(20),
                            ),
                            gradient: article.categories.first.gradientFromColorString,
                          ),
                        ),
                        const SizedBox(width: 12),
                        AppText.body800(
                          article.categories.first.displayName,
                          fontSize: 12,
                          color: context.colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: widgetWidth,
                      child: GradientText(
                        article.title,
                        maxLines: 2,
                        style: AppTextStyles.headlineLarge24.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                        gradient: article.categories.first.gradientFromColorString,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}