import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_details_top_section.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

import 'article_details_html_data.dart';
import 'dynamic_templating/article_details_dynamic_templating.dart';
import 'dynamic_templating/ui/static_video_component.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    Key? key,
    required this.article, required this.tag,
  }) : super(key: key);
  final Article article;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ArticleDetailsTopSection(article: article, tag: tag),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                article.isDynamic?/// Renders Dynamic Templating
                ArticleDetailsDynamicTemplating(
                  article: article,
                ):
                /// Renders HTML data from backend
                ArticleDetailsHtmlData(
                  htmlData: article.htmlContent ?? '',
                  color: article.isTemplate3
                      ? context.colors.white
                      : context.colors.text,
                ),

                /// Renders photos in Grid
                /// iPad - 2 columns, Mobile - 1 column
                if (article.otherAssets.isNotEmpty&&!article.isDynamic)
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: article.otherAssets.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: article.otherAssets[index].videoId!=null? StaticVideoComponent(
                        videoId: article.otherAssets[index].videoId!,
                        aspectRatio: (article.otherAssets[index].width ?? 1920) / (article.otherAssets[index].height ?? 1080),
                        ):AppNetworkImage(
                        imageUrl: injector.get<AppFlavor>().baseImageUrl+article.otherAssets[index].source!.original,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
