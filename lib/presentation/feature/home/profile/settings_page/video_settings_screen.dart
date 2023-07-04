import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/cubit/reels_loop/reels_loop_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_tab_bar.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoSettingsScreen extends StatelessWidget {
  const VideoSettingsScreen({super.key});

  Widget tileBuilder(title, BuildContext context, onPress, bool isActive) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppText.body800(
            title,
            fontSize: 16,
          ),
          AppText.body800(
            title,
            fontSize: 16,
          ),
        ],
      ),
      trailing: CupertinoSwitch(
        activeColor: const Color.fromRGBO(0, 102, 255, 1),
        trackColor: context.colors.switchTrack,
        value: isActive,
        onChanged: (value) => onPress(value),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.profile;
    context.read<ReelsLoopCubit>().getVidSettings();
    return BlocBuilder<ReelsLoopCubit, ReelsLoopState>(
        builder: (context, state) {
      return Scaffold(
        appBar: BlinxAppBar.normal(
            backgroundColor: Colors.transparent, title: i18n.videoSettings
            // actions: const [ProfileThemeSwitch()],
            ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: context.colors.darkGrey,
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 18),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText.body800(
                              i18n.openOnMute,
                              fontSize: 16,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            AppText.body300(
                              i18n.openOnMuteHeadline,
                              fontSize: 13,
                            ),
                          ],
                        ),
                        trailing: CupertinoSwitch(
                          activeColor: const Color.fromRGBO(0, 102, 255, 1),
                          trackColor: context.colors.switchTrack,
                          value: state.onMute,
                          onChanged: (value) {
                            context.read<ReelsLoopCubit>().toggleOnMute();
                          },
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 18),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText.body800(
                              i18n.loopBlinx,
                              fontSize: 16,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            AppText.body300(
                              i18n.loopBlinxHeadline,
                              fontSize: 13,
                            ),
                          ],
                        ),
                        trailing: CupertinoSwitch(
                          activeColor: const Color.fromRGBO(0, 102, 255, 1),
                          trackColor: context.colors.switchTrack,
                          value: state.isAutoLoop,
                          onChanged: (value) {
                            context.read<ReelsLoopCubit>().toggleAutoPlay();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
