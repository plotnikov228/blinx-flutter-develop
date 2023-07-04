import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';

import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_cubit.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/liked_content_tab/ui/grid_articles_view.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/liked_content_tab/ui/grid_blinx_view.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/liked_content_tab/ui/grid_articles_shimmer_view.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/liked_content_tab/ui/grid_blinx_shimmer_view.dart';

class LikedContentTab extends StatefulWidget {
  const LikedContentTab({Key? key}) : super(key: key);

  @override
  State<LikedContentTab> createState() => LikedContentTabState();
}

class LikedContentTabState extends State<LikedContentTab>
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
    return BlocBuilder<GetLikedArticlesCubit, GetLikedArticlesState>(
      builder: (context, state) {
        return Scaffold(
          body: TabBarView(controller: _tController2, children: [
            state.status.isLoading
                ? const GridBlinxShimmerView()
                : GridBlinxView(
                    reelsList: state.likedReels,
                  ),
            state.status.isLoading
                ? const GridArticlesShimmerView()
                : GridArticlesView(
                    articlesList: state.likedArticles,
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
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide.none,
                  ),
                  labelPadding: const EdgeInsets.only(bottom: 5, top: 5),
                  controller: _tController2,
                  tabs: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: TextDirection.rtl ==
                              Directionality.of(context)
                          ? const BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Color.fromARGB(127, 69, 69, 69),
                                      width: 1.0)))
                          : null,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            '${context.localization.defaultSection.blinx} (${state.likedReels.length})',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: focusedIndex == 0
                                    ? context.colors.text
                                    : context.colors.text.withOpacity(0.5))),
                      )),
                    ),
                    Container(
                      decoration: TextDirection.rtl !=
                              Directionality.of(context)
                          ? const BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Color.fromARGB(127, 69, 69, 69),
                                      width: 1.0)))
                          : null,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            '${context.localization.defaultSection.articles} (${state.likedArticles.length})',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: focusedIndex == 1
                                    ? context.colors.text
                                    : context.colors.text.withOpacity(0.5))),
                      )),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
