import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/storyteller.dart';
import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/cubit/storytellers_articles_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/story_teller_details/ui/story_teller_article_item.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/story_teller_details/ui/story_teller_details_page_header.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_grid_view.dart';
import 'package:blinx/presentation/feature/home/reels_details/reels_details_screen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_section_heading_title.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/blinx_articles_tabs_view.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryTellerDetailsPage extends StatefulWidget {
  const StoryTellerDetailsPage({super.key, required this.storyteller});

  final Storyteller storyteller;

  @override
  State<StoryTellerDetailsPage> createState() => _StoryTellerDetailsPageState();
}

class _StoryTellerDetailsPageState extends State<StoryTellerDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tController;
  int focusedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tController = TabController(length: 2, vsync: this);
    _tController.animation!.addListener(_handleTabSelection);
  }

  void _handleSwipe(DragEndDetails details, bool isEnglish) {
    if (details.primaryVelocity! < 0) {
      // Swiped left
      if (focusedIndex < _tController.length - 1) {
        _tController.animateTo(focusedIndex + 1);
      }
    } else if (details.primaryVelocity! > 0) {
      // Swiped right
      if (focusedIndex > 0) {
        _tController.animateTo(focusedIndex - 1);
      }
    }
  }

  void _handleTabSelection() {
    // setState(() {
    focusedIndex = _tController.indexIsChanging
        ? _tController.index
        : _tController.animation!.value.round();
    // });
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    return BlocProvider(
      create: (_) => injector<StorytellerArticlesCubit>()
        ..getStorytellerArticles(widget.storyteller.path),
      child: BlocBuilder<StorytellerArticlesCubit, StorytellerArticlesState>(
        builder: (context, state) {
          try {
            widget.storyteller.followed = state.articlesList.first.storytellers!
                .where((element) => element.path == widget.storyteller.path)
                .first
                .followed;
          } catch (e) {}
          return BlocConsumer<ReelsCubit, ReelsState>(
            listenWhen: (previous, current) => current.status.isFailure,
            listener: (context, state) {
              state.status.whenOrNull(
                failure: (error) => AppSnackBar.showErrorMessage(
                  context,
                  title: error.getErrorMessage(context),
                ),
              );
            },
            builder: (context, reelsState) {
              if (reelsState.selectedArticle != null) {
                context.read<HomeAbCubit>().update(false);
                return ReelsDetailsScreen(
                  state.articlesList.where((e) => !e.isReels).toList(),
                  selectedArticle: reelsState.selectedArticle!,
                  doPop: false,
                );
              } else {
                final appSharedPreferences = injector.get<AppPreferences>();
                var buffer = StringBuffer();
                var locale = appSharedPreferences.getLanguage;
                var isEnglish = locale == 'en';
                var name = widget.storyteller.name.replaceAll(' ', '_');
                if (isEnglish) {
                  buffer.writeAll([
                    '@',
                    name,
                  ]);
                } else {
                  buffer.writeAll([name, '@']);
                }

                return Scaffold(
                  key: Key('Story_Teller_Details_Page_$focusedIndex'),
                  appBar: AppBar(
                    centerTitle: true,
                    elevation: 0,
                    backgroundColor: context.colors.background,
                    actions: const [SizedBox()],
                    title: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(buffer.toString()),
                    ),
                    leading: const Padding(
                      padding: EdgeInsetsDirectional.all(8.0),
                      child: LeadingActionButton(),
                    ),
                  ),
                  // BlinxAppBar.normal(
                  //   title: buffer.toString(),
                  // ),
                  body: NestedScrollView(
                    key: Key('Story_Teller_Details_Page_Scroll_$focusedIndex'),
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      var reelsCount = state.articlesList
                          .where((e) => e.isReels)
                          .toList()
                          .length;
                      return [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: UpdatedStoryTellerDetailsPageHeader(
                                  reelsCount: reelsCount,
                                  storytellerWrapper: StorytellerWrapper(
                                    storyteller: widget.storyteller,
                                    articlesCount: state.articlesList.length,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ];
                    },
                    body: BlinxArticlesTabsView(
                      articlesList:
                          state.articlesList.where((e) => !e.isReels).toList(),
                      blinxList:
                          state.articlesList.where((e) => e.isReels).toList(),
                      isLoading: state.status == const BaseStatus.loading(),
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}

class _ArticlesGridView extends StatefulWidget {
  const _ArticlesGridView({required this.articles});
  final List<Article> articles;

  @override
  State<_ArticlesGridView> createState() => _ArticlesGridViewState();
}

class _ArticlesGridViewState extends State<_ArticlesGridView>
    with AutomaticKeepAliveClientMixin<_ArticlesGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: widget.articles.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.9,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (_, index) {
        final article = widget.articles[index];
        return StoryTellerArticleItem(article: article);
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
