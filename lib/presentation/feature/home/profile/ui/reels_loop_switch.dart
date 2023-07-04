import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/common/cubit/reels_loop/reels_loop_cubit.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReelsLoopSwitch extends StatelessWidget {
  const ReelsLoopSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final themeMode = context.watch<ReelsLoopCubit>().state.isAutoLoop;
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              context.read<ReelsLoopCubit>().toggleAutoPlay();
            },
            child: SizedBox(
              width: 58,
              child: AnimatedToggleSwitch<bool>.rolling(
                current: themeMode,
                height: 32.0,
                innerColor: colors.blue,
                borderColor: colors.blue,
                indicatorColor: colors.primary,
                values: const [false, true],
                onTap: () => context.read<ReelsLoopCubit>().toggleAutoPlay(),
                onChanged: (_) =>
                    context.read<ReelsLoopCubit>().toggleAutoPlay(),
                iconBuilder: (value, size, toggled) {
                  final color = toggled ? colors.blue : colors.primary;
                  final icon =
                      !value ? Assets.icons.playNext : Assets.icons.boucle;
                  return Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: icon.image(color: color),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
