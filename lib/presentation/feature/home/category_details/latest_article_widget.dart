import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/home_feed/hero_section/category_shape.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';

class LatestArticleWidget extends StatelessWidget {
  const LatestArticleWidget({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox.fromSize(
      size: Size(screenSize.width, screenSize.height * .65),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  stops: const [0, .3, 1.0],
                  colors: [
                    context.colors.background.withOpacity(.95),
                    context.colors.background.withOpacity(.4),
                    Colors.transparent,
                  ],
                ),
              ),
              child: AppNetworkImage(
                key: ObjectKey(article),
                fit: BoxFit.cover,
                imageUrl: article.imageUrl,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          PositionedDirectional(
            start: 16,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText.title(article.categories.first.name),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: CategoryShape(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * .85,
                      child: GradientText(
                        article.title,
                        maxLines: 3,
                        style: AppTextStyles.headlineLarge32.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.deepOrange,
                            Colors.orange,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
