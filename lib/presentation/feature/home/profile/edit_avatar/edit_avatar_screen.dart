import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/profile/edit_avatar/cubit/save_avatars_state.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/get_avatars_state.dart';
import 'cubit/get_avatars_teller_cubit.dart';
import 'cubit/save_avatars_teller_cubit.dart';
import 'ui/avatar_teller_item.dart';

class EditAvatarScreen extends StatelessWidget {
  const EditAvatarScreen({super.key});

  final _gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 12.0,
    mainAxisSpacing: 12.0,
    childAspectRatio: 0.91,
  );

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.defaultSection;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => injector<GetAvatarsCubit>()),
        BlocProvider(create: (_) => injector<SaveAvatarsCubit>()),
      ],
      child: Scaffold(
        appBar: BlinxAppBar.normal(title: i18n.selectAvatar),
        body: BlocBuilder<GetAvatarsCubit, GetAvatarsState>(
            builder: (context, state) {
          return state.status.maybeWhen(
            success: () {
              return Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.avatars.length,
                      gridDelegate: _gridDelegate,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          AvatarItem(state.avatars[index])),
                  const SizedBox(
                    height: 42,
                  ),
                  BlocBuilder<SaveAvatarsCubit, SaveAvatarsState>(
                      builder: (context, state2) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: AppButton.rounded(
                        title: i18n.saveAvatar,
                        isLoading: state2.status.isLoading,
                        onPressed: state.selectedPath == ''
                            ? null
                            : () => context
                                .read<SaveAvatarsCubit>()
                                .save(state.selectedPath),
                      ),
                    );
                  })
                ],
              );
            },
            loading: () => GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: _gridDelegate,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => const ShimmerBox(),
            ),
            orElse: () => ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                clipBehavior: Clip.hardEdge,
                child: const SizedBox.shrink()),
          );
        }),
      ),
    );
  }
}
