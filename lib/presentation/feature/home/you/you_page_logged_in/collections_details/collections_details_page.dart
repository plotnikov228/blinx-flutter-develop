import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/collections_details/cubit/collections_articles_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/blinx_articles_tabs_view.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

class CollectionDetailsPage extends StatefulWidget {
  const CollectionDetailsPage({super.key, required this.collection});
  final Collection collection;

  @override
  State<CollectionDetailsPage> createState() => CollectionDetailsPageState();
}

class CollectionDetailsPageState extends State<CollectionDetailsPage>
    with TickerProviderStateMixin {
  late TabController _tController2;
  int focusedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tController2 = TabController(length: 2, vsync: this);
    _tController2.animation!.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      focusedIndex = _tController2.indexIsChanging
          ? _tController2.index
          : _tController2.animation!.value.round();
    });
  }

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<CollectionsArticlesCubit>()
        ..getCollectionArticles(widget.collection.id!),
      child: BlocBuilder<CollectionsArticlesCubit, CollectionsArticlesState>(
        builder: (context, state) {
          return Scaffold(
            appBar: ScrollAppBar(
              elevation: 0,
              backgroundColor: context.colors.background,
              controller: _scrollController,
              title: AppText.body800(
                widget.collection.name,
                fontSize: 20,
              ),
              leading: const Padding(
                padding: EdgeInsetsDirectional.all(8.0),
                child: LeadingActionButton(),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(18),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    alignment: Directionality.of(context) == TextDirection.ltr
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: AppText.body500(
                      '${state.articlesList.length} ' +
                          ((state.articlesList.length == 1 ||
                                  state.articlesList.length > 10)
                              ? context.localization.collection.savedItem
                              : context.localization.collection.savedItems),
                      fontSize: 16,
                      color: context.colors.text.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
              // bottom: const Text('azerazer'),
            ),
            body: BlinxArticlesTabsView(
              articlesList:
                  state.articlesList.where((e) => !e.isReels).toList(),
              blinxList: state.articlesList.where((e) => e.isReels).toList(),
              isLoading: state.status == const BaseStatus.loading(),
            ),
          );
        },
      ),
    );
  }
}
