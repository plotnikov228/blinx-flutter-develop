import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/feature/moments/widgets/moments_body/moments_body.dart';
import 'package:blinx/presentation/feature/moments/widgets/moments_header/moments_header_section.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MomentsScreen extends StatelessWidget {
  const MomentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MomentsCubit>().clearEphemeralState();
    return Material(
      color: Colors.transparent,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            const MomentsBody(),

            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colors.black,
                    context.colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            const MomentsHeaderSection(),

          ],
        ),
      ),
    );
  }
}
