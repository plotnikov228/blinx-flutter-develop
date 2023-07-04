import 'dart:ui';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/you_page_logged_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/you_page_logged_in_appbar.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/reels_details/reels_details_screen.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_state.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_cubit.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_state.dart';
class YouPageLoggedIn extends StatefulWidget {
  const YouPageLoggedIn({Key? key}) : super(key: key);

  @override
  State<YouPageLoggedIn> createState() => YouPageLoggedInState();
}

class YouPageLoggedInState extends State<YouPageLoggedIn> with TickerProviderStateMixin {
  
  late final scrollController = ScrollController();
  late TabController _tController;
  int focusedIndex = 0; 

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tController = TabController(length: 3, vsync: this);
    _tController.animation!.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      focusedIndex = _tController.indexIsChanging?_tController.index:_tController.animation!.value.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    final kStatusBarHeight =
        MediaQueryData.fromWindow(window).padding.top - 13;

    return BlocBuilder<HomeAbCubit, HomeAbState>(
      builder: (context, sp) {
        return BlocBuilder<GetLikedArticlesCubit, GetLikedArticlesState>(
            builder: (context, state) {
              if(sp.page=='profile_page'&&sp.selectedArticle!=null&&!sp.showAb) {
                return  ReelsDetailsScreen(
                  sp.playList.isNotEmpty?sp.playList:state.blinxToPlay,
                  selectedArticle: sp.selectedArticle!,
                  doPop: false,
                );
                  
              } else {
                context.read<GetLikedArticlesCubit>().updateBlinxToPlay(
                  state.likedReels,
                  state.likedArticles
                );
                return Padding(
                  padding: EdgeInsets.only(top: kStatusBarHeight),
                  child: Scaffold(
                    appBar: const YouPageLoggedInAppBar(),
                    body: YouPageLoggedInBody(
                      scrollController: scrollController,
                      tController: _tController,
                      focusedIndex: focusedIndex,
                    ),
                  )
              );
            }
          }
        );
      }
    );
  }
}
