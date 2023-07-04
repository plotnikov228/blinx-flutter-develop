import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_state.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/ui/story_teller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryTellerGrid extends StatelessWidget {
  const StoryTellerGrid({super.key});

  final _gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 12.0,
    mainAxisSpacing: 12.0,
    childAspectRatio: 0.91,
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStoryTellerCubit, GetStoryTellerState>(
      builder: (context, state) {
        return state.status.maybeWhen(
          success: () {
            if (!state.hasStorytellers) {
              return const SizedBox.shrink();
            }
            return GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.storytellersCount,
              gridDelegate: _gridDelegate,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  StoryTellerItem(state.storytellersWrappers[index]),
            );
          },
          loading: () => GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: _gridDelegate,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) => const StoryTellerItem(null),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
