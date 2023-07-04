import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_add_collection_button.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_dark_gradient_overlay.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_details_icon_button.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_heart_icon_button.dart';
import 'package:blinx/presentation/feature/home/home_feed/hero_section/category_shape.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/utils/date_formatter.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class ArticleDetailsTopSection extends StatefulWidget {
  const ArticleDetailsTopSection({
    Key? key,
    required this.article,
    this.isEditorChoice = false, required this.tag,
  }) : super(key: key);
  final Article article;
  final bool isEditorChoice;
  final String tag;

  @override
  State<StatefulWidget> createState() => _ArticleDetailsTopSection();
}

class _ArticleDetailsTopSection extends State<ArticleDetailsTopSection> {
  Article get article => widget.article;
  late VideoPlayerController? videoPlayerController = article.hasVideo
      ? addVid(
      'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${article.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw'
  ):null;

  VideoPlayerController addVid(String st) {
    var vp = VideoPlayerController.network(
      st,
    )
      ..setVolume(0.0)
      ..setLooping(true)
      ..initialize().then((value) {
        setState(() {});
      });
    vp.play();
    return vp;
  }

  @override
  Widget build(BuildContext context) {
    final bannerHeight = MediaQuery.of(context).size.width * (5/4);
    return Hero(
      tag: widget.tag,
      child: Stack(
        children: [

          Positioned(
            child: Container(
              color:
                  article.isTemplate3 ? Colors.transparent : context.colors.black,
              height: bannerHeight,
              width: double.infinity,
              child: article.isTemplate3
                  ? const SizedBox()
                  : ArticleDarkGradientOverlay(
                      child: article.hasVideo
                          ? AbsorbPointer(
                        child: videoPlayerController != null &&
                            videoPlayerController!.value.isInitialized? Center(
                          child: AspectRatio(
                            aspectRatio: videoPlayerController!
                                .value
                                .aspectRatio,
                            child: VideoPlayer(
                              videoPlayerController!,
                            ),
                          ),
                        ):const SizedBox(),
                      )
                          : AppNetworkImage(
                                  height: bannerHeight,
                                  width: double.infinity,
                                  imageUrl: !widget.isEditorChoice?article.mobileHero:article.mobileArticle,
                                ),
                    ),
            ),
          ),

        /// Based on the article template type, we will render action icons
        /// in different styles
        // Visible for template 1
        /*Visibility(
          visible: !widget.isEditorChoice!,
          child: _Template1ActionIcons(article: article),
        ),

        // Visible for template 2
        Visibility(
          visible: !widget.isEditorChoice!,
          child: _Template2ActionTopIcons(article: article),
        ),

        // Visible for template 3
        Visibility(
          visible: !widget.isEditorChoice!,
          child: _Template3ActionIcons(article: article),
        ),*/

          PositionedDirectional(
            bottom: 16,
            start: 16,
            end: 16,
            child: Material(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _ArticleDetailsCategory(article: article),
                  const SizedBox(height: 8),

                  _ArticleDetailsTitle(article: article,isEditorChoice: widget.isEditorChoice),

                /// Only visible for template 2
                /*Visibility(
                visible: !widget.isEditorChoice!,
                child: _Template2ActionBottomIcons(
                  article: article,
                  force: !article.isDynamic,
                ),
              ),*/

                  /// Only visible for template 2
                  if(!widget.isEditorChoice) _Template2ActionBottomIcons(article: article, force: !article.isDynamic,),

                  const SizedBox(height: 4),

                  Wrap(
                    children: [
                      if(article.storytellers!=null&&article.storytellers!.isNotEmpty) ...article.storytellers!.map((e) {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppText.body(
                              article.storytellers!.first==e?' ':' & ',
                              color: context.colors.white,
                            ),
                            GestureDetector(
                            onTap: () {
                              if (videoPlayerController != null) {
                                videoPlayerController!.pause();
                              }

                              context.router.push(
                                StoryTellerDetailsPageRoute(
                                  storyteller: e,
                                ),
                              );

                            },
                            child: AppText.body(
                              e.displayName,
                              color: context.colors.white,
                            ),
                      ),
                          ],
                        );
                      },).toList(),
                    ],
                  ),

                  const SizedBox(height: 12),

                  AppText.body(
                    article.publishDate!.reelsFormat(context),
                    color: article.isTemplate1
                        ? context.colors.grey
                        : context.colors.white,
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class _ArticleDetailsCategory extends StatelessWidget {
  const _ArticleDetailsCategory({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Category shape is only in Template 2 design
        if (article.isTemplate2)
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8.0),
            child: CategoryShape(
              category: article.categories.first,
            ),
          ),
        AppText.body800(
          article.categories.first.displayName,
          fontSize: 13,
          color: context.colors.white,
        ),
      ],
    );
  }
}

class _ArticleDetailsTitle extends StatelessWidget {
  const _ArticleDetailsTitle({
    Key? key,
    required this.article, this.isEditorChoice=false,
  }) : super(key: key);

  final Article article;
  final bool isEditorChoice;

  @override
  Widget build(BuildContext context) {

    if(isEditorChoice) {
      return AppText.headlineLarge24(
        article.title,
        color: context.colors.white,
      );
    }

    if (!article.isTemplate1) {
      return AppText.headlineLarge(
        article.title,
        color: context.colors.white,
      );
    }

    return GradientText(
      article.title,
      style: AppTextStyles.headlineLarge24,
      gradient: article.categories.first.gradientFromColorString,
    );
  }
}

class _Template1ActionIcons extends StatelessWidget {
  const _Template1ActionIcons({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    if (!article.isTemplate1) {
      return const SizedBox();
    }

    return PositionedDirectional(
      top: 0,
      start: 0,
      end: 0,
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            LeadingActionButton(
              color: context.colors.white,
            ),
            const Spacer(),
            _Template2ActionBottomIcons(article: article, force: false),
          ],
        ),
      ),
    );
  }
}

class _Template2ActionTopIcons extends StatelessWidget {
  const _Template2ActionTopIcons({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {

    if (article.isTemplate2) {

      return PositionedDirectional(
        top: 0,
        start: 0,
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: LeadingActionButton(
              color: context.colors.white,
            ),
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}

class _Template2ActionBottomIcons extends StatelessWidget {
  const _Template2ActionBottomIcons(
      {Key? key, required this.article, this.force = true})
      : super(key: key);

  final Article article;
  final bool force;

  @override
  Widget build(BuildContext context) {
    if (force) {
      if (article.template != 'template2') {
        return const SizedBox();
      }
    }

    return Material(
      color: Colors.transparent,
      child: SizedBox(
        height: 68,
        child: Row(
          children: [
            const SizedBox(width: 8,),
            ArticleHeartIconButton(article: article),
            ArticleCommentsIconButton(article: article),
            ArticleDetailsIconButton(
              icon: Assets.icons.share.svg(height: 21.6, width: 21.6),
              onPressed: () => Share.share(article.articleWebUrl),
            ),
            ArticleAddCollectionButton(article: article),
          ],
        ),
      ),
    );
  }
}

class _Template3ActionIcons extends StatelessWidget {
  const _Template3ActionIcons({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    if (article.template != 'template3') {
      return const SizedBox();
    }

    return PositionedDirectional(
      top: 0,
      start: 0,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.66,
            child: Container(
              width: 72,
              height: 296,
              decoration: BoxDecoration(
                borderRadius: const BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(32),
                ),
                gradient: article.categories.first.gradientFromColorString,
                backgroundBlendMode: BlendMode.colorBurn,
              ),
            ),
          ),
          SizedBox(
            width: 72,
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: LeadingActionButton(
                            color: context.colors.white, size: 24),
                      ),
                      Divider(
                        color: context.colors.white.withOpacity(.66),
                      ),
                      ArticleDetailsIconButton(
                        icon: Assets.icons.share.svg(height: 21.6, width: 21.6),
                        onPressed: () => Share.share(article.articleWebUrl),
                      ),
                      ArticleHeartIconButton(article: article),
                      ArticleCommentsIconButton(article: article),
                      ArticleAddCollectionButton(article: article),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
