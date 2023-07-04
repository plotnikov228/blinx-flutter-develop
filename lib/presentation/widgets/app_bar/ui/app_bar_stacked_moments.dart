import 'dart:math';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/app_bar_moment_count_item.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/app_bar_moment_item.dart';
import 'package:flutter/material.dart';

class AppBarStackedMoments extends StatelessWidget {
  const AppBarStackedMoments._({
    super.key,
    required this.momentsAuthorsAvatarUrls,
    required this.isLoading,
  });

  factory AppBarStackedMoments.data(Iterable<String> moments, {Key? key}) {
    return AppBarStackedMoments._(
      momentsAuthorsAvatarUrls: moments,
      isLoading: false,
      key: key,
    );
  }

  factory AppBarStackedMoments.shimmer({Key? key}) {
    return AppBarStackedMoments._(
      key: key,
      isLoading: true,
      // Dummy date for the shimmer effect.
      momentsAuthorsAvatarUrls: List.generate(4, (_) => ''),
    );
  }

  final bool isLoading;
  final Iterable<String> momentsAuthorsAvatarUrls;

  int get _maxMomentsToShow => min(momentsAuthorsAvatarUrls.length, 4);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 140,
      child: Stack(
        children: List.generate(_maxMomentsToShow,(index) {
          var realIndex=_maxMomentsToShow-1-index;
          final isLastItem = realIndex == _maxMomentsToShow - 1;
          Widget child = AppBarMomentItem(momentImageUrl: momentsAuthorsAvatarUrls.elementAt(realIndex),);

          if (isLastItem&&realIndex==3&&!isLoading) child = AppBarMomentCount(count: momentsAuthorsAvatarUrls.length);
          return Positioned(
            top: 0,
            bottom: 0,
            left: realIndex * 28,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: !isLoading&&realIndex==0?const BoxDecoration(
                shape: BoxShape.circle,
                gradient: AppGradients.orange,
              ):null,
                child: Container(
                  decoration: !isLoading&&realIndex==0?BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: context.colors.background,
                      )
                  ):null,
                  child: Center(child: child),
                )
            ),
          );
        }),
      ),
    );
  }
}
