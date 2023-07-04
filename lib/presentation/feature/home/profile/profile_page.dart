import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/profile_item.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/domain/usecases/auth/logout_use_case.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_grid.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_header_icon.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_theme_switch.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_username_section.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/reels_loop_switch.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  List<ProfileItem> _getProfileItems(BuildContext context) {
    final appSharedPreferences = injector.get<AppPreferences>();
    final profileItems = [
      ProfileItem(
        id: '0',
        name: context.localization.profile.notifications,
        icon: Assets.icons.notifications.path,
        onTap: () {
          context.router.push(const NotificationsScreenRoute());
        },
      ),
      // ProfileItem(
      //   id: '1',
      //   name: context.localization.profile.manageAccount,
      //   icon: Assets.icons.manageAccount.path,
      //   onTap: () {
      //     context.router.push(const ManageAccountScreenRoute());
      //   },
      // ),
      ProfileItem(
        id: '2',
        name: appSharedPreferences.getLanguage == 'en' ? 'Settings' : 'الإعدادات',
        icon: Assets.icons.preference.path,
        onTap: () {
          context.router.push(const SettingsScreenRoute());
        },
      ),
      ProfileItem(
        id: '3',
        name: context.localization.profile.activity,
        icon: Assets.icons.activity.path,
        onTap: () {
          context.router.push(const ActivityScreenRoute());
        },
      ),
      /*ProfileItem(
        id: '4',
        name: context.localization.profile.language,
        icon: Assets.icons.language.path,
        onTap: () {
          AppBottomSheet.showSheet(
            backgroundOpacity: 0,
            context,
            child: const SwitchLanguageSheetContent(),
          );
        },
      ),*/
      ProfileItem(
        id: '5',
        name: context.localization.profile.support,
        icon: Assets.icons.support.path,
        onTap: context.navigateToSupport,
      ),
      ProfileItem(
        id: '6',
        name: context.localization.profile.logout,
        icon: Assets.icons.logout.path,
        onTap: () async {
          final logoutUseCase = injector.get<LogoutUseCase>();
          await logoutUseCase.call();

          context.read<ReelsCubit>().loadReels(showShimmer: false);

          return context.popRoute();
        },
      ),
    ];
    return profileItems;
  }

  @override
  Widget build(BuildContext context) {
    final profileItems = _getProfileItems(context);
    return Scaffold(
      appBar: BlinxAppBar.normal(
        actions: const [
          ReelsLoopSwitch(),
          ProfileThemeSwitch(),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const Center(
                child: ProfileHeaderIcon(),
              ),
              const SizedBox(height: 32),
              const ProfileUserNameSection(),
              const SizedBox(height: 48),
              ProfileGrid(profieItems: profileItems),
            ]),
          )
        ],
      ),
    );
  }
}
