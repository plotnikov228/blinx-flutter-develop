import 'package:blinx/domain/entities/avatar.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/home/profile/edit_avatar/cubit/get_avatars_state.dart';
import 'package:blinx/presentation/feature/home/profile/edit_avatar/cubit/get_avatars_teller_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarItem extends StatelessWidget {
  const AvatarItem(this.avatar, {super.key});
  final Avatar avatar;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAvatarsCubit, GetAvatarsState>(
      builder: (context, state) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            color: context.colors.darkGrey,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context
                    .read<GetAvatarsCubit>()
                    .update(avatar.path.substring(1)),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Center(
                        child: AppNetworkImage(
                          imageUrl: avatar.imageUrl,
                          height: 56,
                          width: 56,
                        ),
                      ),
                    ),
                    if (state.selectedPath == avatar.path.substring(1))
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Assets.icons.checked.svg(),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
