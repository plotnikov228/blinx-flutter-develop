import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: context.colors.grey.withOpacity(.3),
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  stops: const [.0, .4],
                  colors: [
                    context.colors.black.withOpacity(.82),
                    Colors.transparent,
                  ],
                ),
              ),
              child: AppNetworkImage(
                imageUrl: article.imageUrl,
                errorWidget: (_, __, ___) => const SizedBox.shrink(),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        PositionedDirectional(
          bottom: 16,
          start: 16,
          end: 16,
          child: AppText.normal(
            article.title,
            maxLines: 3,
            color: context.colors.white,
          ),
        ),
      ],
    );
  }
}
