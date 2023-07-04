import 'package:blinx/data/constants.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/feature/home/home_feed/cubit/now_cubit.dart';
import 'package:blinx/presentation/feature/splash/cubit/splash_cubit.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => injector(),
      child: const SplashScreenBody(),
    );
  }
}

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
    );

    _animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        context.read<SplashCubit>().getNavigationFlowState();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<AppThemeCubit>().state.themeMode;
    final splashPath = (themeMode == ThemeMode.dark)
        ? AppConstants.splashPathDark
        : AppConstants.splashPathLight;
    return BlocConsumer<NowCubit, NowState>(
      listener: (context, state) {
        state.status.whenOrNull(
          failure: (error) => AppSnackBar.showErrorMessage(
            context,
            title: error.getErrorMessage(context),
          ),
        );
      },
      builder: (context, nowState) {
        return BlocListener<SplashCubit, SplashNavigationFlow?>(
          listener: (context, state) {
            if (state == null) {
              return;
            }

            switch (state) {
              case SplashNavigationFlow.loginScreen:
                context.replaceWithHomeScreen();
                break;
              case SplashNavigationFlow.homeScreen:
                context.replaceWithHomeScreen();
                break;
            }
          },
          child: Scaffold(
            body: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: Lottie.asset(splashPath,
                    fit: BoxFit.cover,
                    repeat: false,
                    controller: _animationController, onLoaded: (composition) {
                  _animationController.duration = composition.duration;
                  _animationController.forward();
                },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
