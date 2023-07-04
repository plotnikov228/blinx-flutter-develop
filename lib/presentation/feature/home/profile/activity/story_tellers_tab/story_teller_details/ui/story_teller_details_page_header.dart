import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_state.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';

class StoryTellerDetailsPageHeader extends StatelessWidget {
  const StoryTellerDetailsPageHeader(
      {super.key, required this.storytellerWrapper});

  final StorytellerWrapper storytellerWrapper;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    return BlocProvider(
      create: (_) => injector<FollowStoryTellerCubit>(),
      child: BlocBuilder<FollowStoryTellerCubit, FollowStoryTellerState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: AppNetworkImage(
                    imageUrl: storytellerWrapper.storyteller.avatarImageUrl,
                    height: 56,
                    width: 56,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    AppText.title(
                      storytellerWrapper.storyteller.displayName,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 5),
                    AppText.normal(
                      '${storytellerWrapper.articlesCount} ${i18n.stories}',
                      color: context.colors.greyText,
                      fontSize: 12,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  width: 136,
                  child: Stack(
                    children: [
                      Positioned(
                        child: AppButton.small(
                          title: (state.status.isLoading)
                              ? ''
                              : (storytellerWrapper.storyteller.followed
                                  ? i18n.unfollow
                                  : i18n.follow),
                          onPressed: () {
                            final authPreferences =
                                injector.get<AuthPreferences>();

                            if (authPreferences.isLoggedIn()) {
                              if (!state.status.isLoading) {
                                context.read<FollowStoryTellerCubit>().call(
                                    storytellerWrapper.storyteller, context, f: (v) {
                                  v
                                      ? AppSnackBar.showSuccessMessage(
                                          context,
                                          title: context.localization.activity
                                              .followMessage,
                                        )
                                      : AppSnackBar.showSuccessMessage(
                                          context,
                                          title: context.localization.activity
                                              .unfollowMessage,
                                        );
                                  // context.read<GetStoryTellerCubit>().update(
                                  //     storytellerWrapper.storyteller.path, v);
                                });
                              }
                            } else {
                              context.navigateToLoginScreen();
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
                              valueColor: AlwaysStoppedAnimation(Colors.black),
                            ),
                          ),
                        ))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class UpdatedStoryTellerDetailsPageHeader extends StatelessWidget {
  const UpdatedStoryTellerDetailsPageHeader({
    super.key,
    required this.storytellerWrapper,
    required this.reelsCount,
  });

  final StorytellerWrapper storytellerWrapper;
  final int reelsCount;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    return BlocProvider(
      create: (_) => injector<FollowStoryTellerCubit>(),
      child: BlocBuilder<FollowStoryTellerCubit, FollowStoryTellerState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              children: [
                _StoryTellerAvatar(storytellerWrapper: storytellerWrapper),
                const SizedBox(height: 32),
                _StoryTellerDisplayName(storytellerWrapper: storytellerWrapper),
                const SizedBox(height: 16),
                _StoryTellerNumbers(
                  storytellerWrapper: storytellerWrapper,
                  reelsCount: reelsCount,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: 136,
                  child: Stack(
                    children: [
                      Positioned(
                        child: AppButton.small(
                          title: (state.status.isLoading)
                              ? ''
                              : (storytellerWrapper.storyteller.followed
                                  ? i18n.following
                                  : i18n.follow),
                          onPressed: () {
                            final authPreferences =
                                injector.get<AuthPreferences>();

                            if (authPreferences.isLoggedIn()) {
                              if (!state.status.isLoading) {
                                context.read<FollowStoryTellerCubit>().call(
                                    storytellerWrapper.storyteller, context, f: (v) {
                                  v
                                      ? AppSnackBar.showSuccessMessage(
                                          context,
                                          title: context.localization.activity
                                              .followMessage,
                                        )
                                      : AppSnackBar.showSuccessMessage(
                                          context,
                                          title: context.localization.activity
                                              .unfollowMessage,
                                        );
                                  context.read<GetStoryTellerCubit>().update(
                                      storytellerWrapper.storyteller.path, v);
                                });
                              }
                            } else {
                              context.navigateToLoginScreen();
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
                              valueColor: AlwaysStoppedAnimation(Colors.black),
                            ),
                          ),
                        ))
                    ],
                  ),
                ),
                _StoryTellerTags(storytellerWrapper: storytellerWrapper),
              ],
            ),
          );
        },
      ),
    );
  }
}
class _StoryTellerTags extends StatelessWidget {
  const _StoryTellerTags({
    super.key,
    required this.storytellerWrapper,
  });

  final StorytellerWrapper storytellerWrapper;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: storytellerWrapper.storyteller.tags.isNotEmpty,
      child: AppText.normal(
        '${storytellerWrapper.storyteller.tags}'.replaceAll('[', '').replaceAll(']', ''),
        color: context.colors.greyText,
        fontSize: 12,
        textAlign: TextAlign.center,
        maxLines: 1,
      ),
    );
  }
}

class _StoryTellerAvatar extends StatelessWidget {
  const _StoryTellerAvatar({
    super.key,
    required this.storytellerWrapper,
  });

  final StorytellerWrapper storytellerWrapper;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: AppNetworkImage(
        imageUrl: storytellerWrapper.storyteller.avatarImageUrl,
        height: 112,
        width: 112,
      ),
    );
  }
}

class _StoryTellerDisplayName extends StatelessWidget {
  const _StoryTellerDisplayName({
    super.key,
    required this.storytellerWrapper,
  });

  final StorytellerWrapper storytellerWrapper;

  @override
  Widget build(BuildContext context) {
    return AppText.title(
      storytellerWrapper.storyteller.displayName,
      textAlign: TextAlign.center,
      maxLines: 2,
    );
  }
}

class _StoryTellerNumbers extends StatelessWidget {
  const _StoryTellerNumbers({
    super.key,
    required this.storytellerWrapper,
    required this.reelsCount,
  });

  final StorytellerWrapper storytellerWrapper;
  final int reelsCount;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.title(
                '${storytellerWrapper.storyteller.followers} ${i18n.follow}',
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
              VerticalDivider(
                color: context.colors.white,
              ),
              AppText.title(
                '${storytellerWrapper.storyteller.totalLikedContent} ${i18n.likes}',
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
              VerticalDivider(
                color: context.colors.white,
              ),
              AppText.title(
                '${storytellerWrapper.articlesCount} ${i18n.stories}',
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
