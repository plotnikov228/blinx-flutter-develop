import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_state.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/ui/story_teller_grid.dart';
import 'package:blinx/presentation/feature/home/profile/activity/ui/recommend_section.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryTellersTab extends StatelessWidget {
  const StoryTellersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 15, 16, 20),
                child: AppText.titleLight(
                  context.localization.activity.followStoryTellers,
                  textAlign: TextAlign.left,
                ),
              ),
              const StoryTellerGrid(),
              const SizedBox(height: 30),
              BlocBuilder<GetStoryTellerCubit, GetStoryTellerState>(
                builder: (context, state) {
                  if (state.hasStorytellers) {
                    return const SizedBox();
                  } else {
                    return RecommendSection(
                      isCategoryRecommendation: false,
                    );
                  }
                },
              ),
              const SizedBox(height: 30),
            ]),
          )
        ],
      ),
    );
  }
}
