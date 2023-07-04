import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class EditorsChoiceItem extends StatelessWidget {
  const EditorsChoiceItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.navigateTo(
        ArticleScreenRoute(article: article),
      ),
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
                child: AppNetworkImage(
                  imageUrl: article.mobileArticle,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            start: 9,
            end: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.body500(
                      article.categories.first.name,
                      fontSize: 10,
                      color: context.colors.white,
                    ),
                const SizedBox(height: 9),
                AppText.body500(
                  article.title,
                  maxLines: 3,
                  fontSize: 13,
                  overflow: TextOverflow.ellipsis,
                  color: context.colors.white,
                  // gradient: article.categories.first.gradientFromColorString,
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
