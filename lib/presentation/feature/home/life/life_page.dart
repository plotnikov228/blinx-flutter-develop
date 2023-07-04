import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_state.dart';
import 'package:blinx/presentation/feature/home/home_feed/ad_section/ad_view.dart';
import 'package:blinx/presentation/feature/home/home_feed/ad_section/ad_view_shimmer.dart';
import 'package:blinx/presentation/feature/home/home_feed/editors_choice/editors_choice_section_widget.dart';
import 'package:blinx/presentation/feature/home/home_feed/hero_section/hero_section_shimmer.dart';
import 'package:blinx/presentation/feature/home/home_feed/hero_section/hero_section_widget.dart';
import 'package:blinx/presentation/feature/home/home_feed/home_feed_page.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_section.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_section_shimmer.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_article_shimmer.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_articles_section_widget.dart';
import 'package:blinx/presentation/feature/home/life/cubit/life_cubit.dart';
import 'package:blinx/presentation/feature/home/reels_details/reels_details_screen.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/widgets/app_refresh_indicator.dart';
import 'package:blinx/presentation/widgets/app_section_heading_title.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LifePage extends StatelessWidget {
  const LifePage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.articles;

    return BlocBuilder<HomeAbCubit, HomeAbState> (
        builder: (context, sp) {
          return BlocProvider<LifeCubit>(
            create: (context) => injector()..loadLifeContent(),
            child: Builder(builder: (context) {
              return BlocConsumer<LifeCubit, LifeState>(
                listenWhen: (_, current) => current.status.isFailure,
                listener: (context, state) {
                  state.status.whenOrNull(
                    failure: (error) => AppSnackBar.showErrorMessage(
                      context,
                      title: error.getErrorMessage(context),
                    ),
                  );
                },
                builder: (context, state) {
                  final content = state.content;

                  if(sp.page=='life'&&sp.selectedArticle!=null&&!sp.showAb) {
                    return ReelsDetailsScreen(
                      content?.reels ?? [sp.selectedArticle!],
                      selectedArticle: sp.selectedArticle!,
                      doPop: false,
                    );
                  } else {
                    return AppRefreshIndicator(
                      onRefresh: () async {
                        context.read<MomentsCubit>().loadMoments(showShimmer: false);
                        context.read<LifeCubit>().loadLifeContent(showShimmer: true);
                      },
                      child: ListView(
                        padding: const EdgeInsets.only(bottom: 32),
                        children: [
                          state.shouldShowShimmer
                              ? const HeroSectionShimmer()
                              : state.shouldShowHero
                              ? HeroSectionWidget(
                            articles: content!.heros,
                          )
                              : const SizedBox.shrink(),

                          const SizedBox(height: 16),

                          state.shouldShowShimmer
                              ? const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ShimmerBox(),
                            ),
                          )

                              : state.shouldShowTrending
                              ? AppSectionHeadingTitle(
                              title: context.localization.topStories.topStories,
                              // seeAllText: i18n.seeAllArticles,
                              onSeeAllTap: ()=>{}
                            // () => context.navigateTo(
                            //     const SeeAllArticlesScreenRoute()),
                          )
                              : const SizedBox.shrink(),

                            

                            state.shouldShowShimmer
                            ? const TrendingArticleShimmer()
                                : TrendingArticlesSectionWidget(
                            articles: content?.topStory ?? [],
                            ),
                             // Begin: Editor Choice
                        state.shouldShowShimmer
                            ? const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: SizedBox(
                                  height: 40,
                                  width: double.infinity,
                                  child: ShimmerBox(),
                                ),
                              )
                            : AppSectionHeadingTitle(
                                //  title: context.localization.topStories.topStories,
                                title: i18n.editorsChoice,
                                // seeAllText: i18n.seeAllArticles,
                                onSeeAllTap: () => {},
                              ),
                            state.shouldShowShimmer
                                ? const SizedBox()
                                : EditorsChoiceSectionWidget(
                              articles: content?.editorsChoice.sublist(0, 5) ?? [],
                            ),
                        // End: Editor Choice
                          state.shouldShowShimmer
                              ? const AdvertisementViewShimmer()
                              : AdvertisementView(
                            imageUrl: content?.advertises == null
                                ? ''
                                : (content!.advertises.isEmpty
                                ? ''
                                : content.advertises.first.image),
                          ),

                          state.shouldShowShimmer
                              ? const ReelsSectionShimmer()
                              : ReelsSection(
                            reels: content?.reels ?? [], page: 'life',
                          ),

                          const SizedBox(height: 16),

                          state.shouldShowShimmer
                              ? const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ShimmerBox(),
                            ),
                          )
                              : state.shouldShowTrending
                              ? AppSectionHeadingTitle(
                              title: i18n.trendingLabel,
                              // seeAllText: i18n.seeAllArticles,
                              onSeeAllTap: ()=>{}
                            // () => context.navigateTo(
                            //     const SeeAllArticlesScreenRoute()),
                          )
                              : const SizedBox.shrink(),

                          state.shouldShowShimmer
                              ? const TrendingArticleShimmer()
                              : TrendingArticlesSectionWidget(
                            articles: content?.trending ?? [],
                          ),
                        ]
                      )
                    );
                  }
                },
              );
            }),
          );
        }
    );
  }
}
