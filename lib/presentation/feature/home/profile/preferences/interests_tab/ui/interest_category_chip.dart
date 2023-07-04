import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InterestCategoryChip extends StatelessWidget {
  const InterestCategoryChip({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InterestsCubit, InterestsState>(
      builder: (context, state) {
        final isLikedByUser = state.isLikedByUser(category.id);
        return ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: GestureDetector(
            onTap: () =>
                context.read<InterestsCubit>().likeUnlikeCategory(category),
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                color: context.colors.backgroundReversed,
                gradient:
                    isLikedByUser ? null : category.gradientFromColorString,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.body500(
                      category.name,
                      fontSize: 20,
                      textAlign: TextAlign.center,
                      color: isLikedByUser
                          ? context.colors.background
                          : context.colors.text,
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
