import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';

import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/grid_articles_view.dart';
import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/grid_blinx_view.dart';
import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/grid_articles_shimmer_view.dart';
import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/grid_blinx_shimmer_view.dart';

class BlinxArticlesTabsView extends StatefulWidget {
  const BlinxArticlesTabsView({
    super.key,
    required this.articlesList,
    required this.blinxList,
    required this.isLoading,
  });

  final List<Article> articlesList;
  final List<Article> blinxList;
  final bool isLoading;

  @override
  State<BlinxArticlesTabsView> createState() => BlinxArticlesTabsViewState();
}

class BlinxArticlesTabsViewState extends State<BlinxArticlesTabsView>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: _tController2, children: [
        widget.isLoading
            ? const GridBlinxShimmerView()
            : GridBlinxView(
                reelsList: widget.blinxList,
              ),
        widget.isLoading
            ? const GridArticlesShimmerView()
            : GridArticlesView(
                articlesList: widget.articlesList,
              ),
      ]),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Colors.grey.withOpacity(0.36),
              ),
            ),
          ),
          child: TabBar(
              indicatorColor: const Color.fromRGBO(0, 102, 255, 1),
              labelPadding: const EdgeInsets.only(bottom: 5, top: 5),
              controller: _tController2,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Assets.icons.blinxTabIcon.svg(
                                color: focusedIndex == 0
                                    ? context.colors.text
                                    : context.colors.text.withOpacity(0.5)),
                          ),
                          Text(
                              '${context.localization.defaultSection.blinx} (${widget.blinxList.length})',
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: focusedIndex == 0
                                      ? context.colors.text
                                      : context.colors.text.withOpacity(0.5))),
                        ],
                      ),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Assets.icons.articlesTabIcon.svg(
                                color: focusedIndex == 1
                                    ? context.colors.text
                                    : context.colors.text.withOpacity(0.5)),
                          ),
                          Text(
                              '${context.localization.defaultSection.articles} (${widget.articlesList.length})',
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: focusedIndex == 1
                                      ? context.colors.text
                                      : context.colors.text.withOpacity(0.5))),
                        ],
                      ),
                    )),
              ]),
        ),
      ),
    );
  }
}
