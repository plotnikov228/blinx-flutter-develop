import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';

class GridArticleComponent extends StatelessWidget {
  const GridArticleComponent({
    Key? key,
    this.size,
    required this.article,
  }) : super(key: key);

  final Article article;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          ArticleScreenRoute(article: article),
        );
      }, // ArticleScreenRoute(article: article)
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  stops: const [0, .3, .8],
                  colors: [
                    context.colors.black.withOpacity(1),
                    context.colors.black.withOpacity(.6),
                    Colors.transparent,
                  ],
                ),
              ),
              child: AppNetworkImage(
                imageUrl: article.mobileBlinx,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
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
                      width: 12,
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(7),
                        ),
                        gradient:
                            article.categories.first.gradientFromColorString,
                      ),
                    ),
                    const SizedBox(width: 6),
                    AppText.body300(
                      article.categories.first.displayName,
                      fontSize: 10,
                      color: context.colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                SizedBox(
                  child: GradientText(
                    article.title,
                    style: AppTextStyles.body
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                    gradient: article.categories.first.gradientFromColorString,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
