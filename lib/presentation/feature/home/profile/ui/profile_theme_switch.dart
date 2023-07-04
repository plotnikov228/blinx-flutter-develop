import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileThemeSwitch extends StatelessWidget {
  const ProfileThemeSwitch({super.key});

  static const icons = Assets.icons;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final themeMode = context.watch<AppThemeCubit>().state.themeMode;

    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => context.read<AppThemeCubit>().toggleTheme(),
            child: SizedBox(
              width: 58,
              child: AnimatedToggleSwitch<bool>.rolling(
                current: themeMode == ThemeMode.dark,
                height: 32.0,
                innerColor: colors.blue,
                borderColor: colors.blue,
                indicatorColor: colors.primary,
                values: const [false, true],
                onTap: () => context.read<AppThemeCubit>().toggleTheme(),
                onChanged: (_) => context.read<AppThemeCubit>().toggleTheme(),
                iconBuilder: (value, size, toggled) {
                  final color = toggled ? colors.blue : colors.primary;
                  final icon = !value ? icons.lightTheme : icons.darkTheme;
                  return Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: icon.svg(color: color),
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
