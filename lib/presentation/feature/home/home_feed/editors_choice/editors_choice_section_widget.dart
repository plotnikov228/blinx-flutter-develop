import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_details_top_section.dart';
import 'package:blinx/presentation/feature/home/home_feed/editors_choice/editors_choice_item.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class EditorsChoiceSectionWidget extends StatelessWidget {
  const EditorsChoiceSectionWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    var fourArticles=articles.sublist(1);
    return Column(
      children: [
        GestureDetector(
          onTap: () => context.navigateTo(
            ArticleScreenRoute(article: articles.first),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.width * (9/16),
            child: ArticleDetailsTopSection(
              article: articles.first,
              isEditorChoice: true, tag: '',
            ),
          ),
        ),
       GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          itemCount: fourArticles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16/9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
          ),
          itemBuilder: (context, index) {
            return Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      gradient: fourArticles[index]
                          .categories
                          .first
                          .gradientFromColorString,
                      borderRadius: const BorderRadiusDirectional.only(
                        topEnd: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                  const EdgeInsetsDirectional.only(start: 8, top: 8),
                  alignment: AlignmentDirectional.bottomEnd,
                  child: EditorsChoiceItem(article: fourArticles[index]),
                ),
              ],
            );
          },
        ),
      ],
    );  
  }
}

