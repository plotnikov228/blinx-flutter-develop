import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_state.dart';
import 'package:blinx/presentation/feature/home/profile/activity/likes_tab/cubit/get_liked_articles_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/activity/likes_tab/cubit/get_liked_articles_state.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    context.read<GetStoryTellerCubit>().getStorytellers();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => injector.get<GetLikedArticlesCubit>()),
      ],
      child: BlocBuilder<GetStoryTellerCubit, GetStoryTellerState>(
        builder: (context, state) {
          return BlocBuilder<GetLikedArticlesCubit, GetLikedArticlesState>(
              builder: (context, state2) {
            return AppTabBar(
              routes: const [
                LikesTabRoute(),
                StoryTellersTabRoute(),
              ],
              title: i18n.activity,
              tabs: [
                Tab(
                  text: '${i18n.likes} (${state2.articlesList.length})',
                ),
                Tab(
                  text: '${i18n.storyTeller} (${state.storytellersCount})',
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
