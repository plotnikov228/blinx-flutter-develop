import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/usecases/auth/get_streaming_user_usecase.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileHeaderIcon extends StatelessWidget {
  const ProfileHeaderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: injector.get<GetStreamingUserUseCase>().call(),
      builder: ((_, value) {
        final user = value.data;
        if (user == null) {
          return const SizedBox.shrink();
        }
        return SizedBox(
          width: 90,
          height: 90,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.center,
                child: user.avatar == null
                    ? Assets.icons.profileIcon.svg(
                        width: 90,
                        height: 90,
                      )
                    : AppNetworkImage(
                        imageUrl: user.avatar!.imageUrl,
                        height: 90,
                        width: 90,
                      ),
              ),
              Positioned(
                right: -4,
                bottom: 0,
                child: GestureDetector(
                  onTap: () =>
                      context.navigateTo(const EditAvatarScreenRoute()),
                  child: Assets.icons.editCircularOutlined.svg(
                    width: 24,
                    height: 24,
                    color: context.watch<AppThemeCubit>().state.themeMode ==
                            ThemeMode.dark
                        ? context.colors.primary
                        : context.colors.black,
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
