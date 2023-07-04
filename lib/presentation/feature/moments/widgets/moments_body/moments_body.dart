import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'moments_inside_body.dart';

class MomentsBody extends StatefulWidget {
  const MomentsBody({super.key});

  @override
  State<MomentsBody> createState() => _MomentsBodyState();
}

class _MomentsBodyState extends State<MomentsBody> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MomentsCubit, MomentsState>(
      builder: (context, state) {
        final selectedMoment = state.selectedMoment;

        if (selectedMoment == null) return const SizedBox.shrink();
        return MomentsInsideBody(moment: selectedMoment);
      },
    );
  }
}
