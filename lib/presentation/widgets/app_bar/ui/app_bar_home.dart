import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/app_bar_stacked_moments.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/home_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarHomeContent extends StatelessWidget {
  const AppBarHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            context.router.popUntilRouteWithPath('/home');
          },
          child: Assets.icons.blinxLogoWithText.svg(
            color: context.colors.text,
          ),
        ),
        const Spacer(),
        BlocBuilder<MomentsCubit, MomentsState>(
          builder: (context, state) {
            return state.status.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => AppBarStackedMoments.shimmer(),
              success: () => GestureDetector(
                onTap: () => context.router.push(const MomentsScreenRoute()),
                child: AppBarStackedMoments.data(state.authorsAvatarUrls),
              ),
            );
          },
        ),
        const SizedBox(width: 16),
        HomeNavButton(
          onTap: () {
            context.router.push(const ExploreScreenRoute());
          },
          child: Assets.icons.navMoments.svg(
            color: context.colors.text,
            width: 24,
            height: 24,
          ),
        ),
        // HomeNavButton(
        //   onTap: context.navigateToProfile,
        //   child: Assets.icons.navProfile.svg(
        //     color: context.colors.text,
        //     width: 24,
        //     height: 24,
        //   ),
        // ),
      ],
    );
  }
}
