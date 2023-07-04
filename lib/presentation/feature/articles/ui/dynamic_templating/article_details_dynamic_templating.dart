import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:blinx/presentation/feature/articles/ui/dynamic_templating/ui/carousel_component.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'ui/block_quote_component.dart';
import 'ui/rich_text_component.dart';
import 'ui/static_video_component.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'ui/text_gradient_component.dart';

class ArticleDetailsDynamicTemplating extends StatelessWidget {
  const ArticleDetailsDynamicTemplating({
    super.key,
    required this.article,
  });
  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: article.layoutComponent.map((e) {
        switch (e.type) {
          case 'quote':
            {
              return BlockQuoteComponent(
                article: article,
                component: e,
              );
            }
          case 'textGradient':
            {
              return TextGradientComponent(
                article: article,
                component: e,
              );
            }
          case 'richText':
            {
              return RichTextComponent(
                article: article,
                component: e,
              );
            }
          case 'html':
            {
              return RichTextComponent(
                article: article,
                component: e,
              );
            }
          case 'callout':
            {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Stack(
                  children: [
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        child: SelectableText(
                          (e.data.content),
                          style: TextStyle(
                              color: context.colors.backgroundReversed,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 2,
                        decoration: BoxDecoration(
                          gradient:
                              article.categories.first.gradientFromColorString,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          case 'video':
            {
              return StaticVideoComponent(
                videoId: e.data.media.first.videoId ?? '',
                aspectRatio: (e.data.media.first.width ??
                    1920) / (e.data.media.first.height ?? 1080),
              );
            }
          case 'videoVertical':
            {
              return StaticVideoComponent(
                videoId: e.data.media.first.videoId ?? '',
                isVertical: true,
                aspectRatio: (e.data.media.first.width ??
                    1920) / (e.data.media.first.height ?? 1080),
              );
            }
          case 'gif':
            {
              return SizedBox(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: AppNetworkImage(
                        imageUrl: injector.get<AppFlavor>().baseImageUrl +
                            (e.data.media.first.url ?? '')
                                .replaceAll('/author', ''),
                        alignment: Alignment.topCenter,
                      ),
                    )),
              );
            }
          case 'image':
            {
              return SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl: (injector.get<AppFlavor>().baseImageUrl +
                                    (e.data.media.first.url ?? ''))
                                .replaceAll('/author', ''),
                            alignment: Alignment.topCenter,
                            maxHeightDiskCache: 700,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 68,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ],
                            )),
                          )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: AppText.body300(
                                e.data.media.first.caption ?? '',
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                              child: AppText.body500(
                                e.data.media.first.source ?? '',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          case 'gallery':
            {
              return ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: e.data.media.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Center(
                                child: CachedNetworkImage(
                                  imageUrl:
                                      injector.get<AppFlavor>().baseImageUrl +
                                          (e.data.media[index].url ?? '')
                                              .replaceAll('/author', ''),
                                  alignment: Alignment.topCenter,
                                  maxHeightDiskCache: 700,
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 68,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black,
                                    ],
                                  )),
                                )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: AppText.body300(
                                      e.data.media[index].caption ?? '',
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                                    child: AppText.body500(
                                      e.data.media[index].source ?? '',
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                        // CachedNetworkImage(imageUrl: injector.get<AppFlavor>().baseImageUrl+(e.data.media[index].url??''),fit: BoxFit.cover,),
                        ),
                  );
                },
              );
            }
          case 'banner':
            {
              return SizedBox(
                height: 200,
                width: double.infinity,
                child: PageView.builder(
                  itemCount: e.data.media.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: CachedNetworkImage(
                                imageUrl:
                                    injector.get<AppFlavor>().baseImageUrl +
                                        (e.data.media[index].url ?? '')
                                            .replaceAll('/author', ''),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 68,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black,
                                    ],
                                  )),
                                )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: AppText.body300(
                                      e.data.media[index].caption ?? '',
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                                    child: AppText.body500(
                                      e.data.media[index].source ?? '',
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                        // CachedNetworkImage(imageUrl: injector.get<AppFlavor>().baseImageUrl+(e.data.media[index].url??''),fit: BoxFit.cover,),
                      );
                  },
                ),
              );
            }
          case 'carousel':
            {
              return CarouselComponent(
                component: e,
              );
            }
          default:
            {
              return const SizedBox.shrink();
            }
        }
      }).toList(),
    );
  }
}
