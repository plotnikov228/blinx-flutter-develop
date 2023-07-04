import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_tile.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/logout_dialog.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/domain/usecases/auth/logout_use_case.dart';

class SettingsLoginSection extends StatelessWidget {
  const SettingsLoginSection({super.key});

  void _onTapAddCollectionButton(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => logoutDialog(context),
      );

  Widget logoutDialog(BuildContext context) {
    return const LogoutDialog();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: injector.get<UserPreferences>().getStreamingUser(),
      builder: (_, value) {
        final user = value.data;

        if(user == null||user.email.value=='') {
          return const SizedBox();
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              color: context.colors.darkGrey,
              child: Column(
                children: [
                  SettingsTile(
                    title: context.localization.profile.logout,
                    icon: Assets.icons.logout.svg(
                      width: 27,
                      color: context.colors.text,
                    ),
                    onPress: () async {
                      _onTapAddCollectionButton(context);
                      // final _logoutUseCase = injector.get<LogoutUseCase>();
                      // await _logoutUseCase.call();

                      // context.read<ReelsCubit>().loadReels(showShimmer: false);

                      // context.popRoute();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
