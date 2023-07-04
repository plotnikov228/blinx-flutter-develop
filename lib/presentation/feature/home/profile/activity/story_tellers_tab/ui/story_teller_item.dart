import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_state.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryTellerItem extends StatelessWidget {
  const StoryTellerItem(this.storytellerWrapper, {super.key});

  final StorytellerWrapper? storytellerWrapper;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    return BlocProvider(
      create: (_) => injector<FollowStoryTellerCubit>(),
      child: BlocBuilder<FollowStoryTellerCubit, FollowStoryTellerState>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              color: context.colors.darkGrey,
              child: Material(
                color: Colors.transparent,
                child: storytellerWrapper == null
                    ? const ShimmerBox()
                    : InkWell(
                        onTap: () {
                          context.router.push(StoryTellerDetailsPageRoute(
                              storyteller: storytellerWrapper!.storyteller));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: AppNetworkImage(
                                      imageUrl: storytellerWrapper!
                                          .storyteller.avatarImageUrl,
                                      height: 56,
                                      width: 56,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  AppText.title(
                                    storytellerWrapper!.storyteller.displayName,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${storytellerWrapper!.articlesCount} ${i18n.stories}',
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(height: 10),
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: AppButton.small(
                                          title: (state.status.isLoading)
                                              ? ''
                                              : (storytellerWrapper!
                                                      .storyteller.followed
                                                  ? i18n.unfollow
                                                  : i18n.follow),
                                          onPressed: () {
                                            if (!state.status.isLoading) {
                                              context
                                                  .read<
                                                      FollowStoryTellerCubit>()
                                                  .call(storytellerWrapper!
                                                      .storyteller, context);
                                            }
                                          },
                                        ),
                                      ),
                                      if (state.status.isLoading)
                                        const Positioned.fill(
                                            child: Center(
                                          child: SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: CircularProgressIndicator(
                                              backgroundColor: Colors.grey,
                                              valueColor:
                                                  AlwaysStoppedAnimation(
                                                      Colors.black),
                                            ),
                                          ),
                                        ))
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
