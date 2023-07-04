import 'package:blinx/domain/usecases/auth/logout_use_case.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_cubit.dart';

import 'package:blinx/presentation/widgets/app_button.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final i18n = context.localization.collection;
    return Center(
      child: Container(
          decoration: BoxDecoration(
            color: context.colors.bottomSheetBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 360,
          height: 270,
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              child: AppText.body500(
                            context.localization.profile.areYouSure,
                            fontSize: 20.0,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: Align(
                      alignment: Directionality.of(context) == TextDirection.ltr
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: AppText.body300(
                        context.localization.profile.logoutWarning,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  AppButton.rounded(
                      title: context.localization.defaultSection.nevermind,
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  AppButton.text(
                    title: context.localization.profile.logout,
                    onPressed: () async {
                      final _logoutUseCase = injector.get<LogoutUseCase>();
                      await _logoutUseCase.call();

                      context.read<MomentsCubit>().clearAllData();

                      context.read<ReelsCubit>().loadReels(showShimmer: false);

                      context.popRoute();
                    },
                    textColor: context.colors.text,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
