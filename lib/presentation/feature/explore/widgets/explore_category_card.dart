import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ExploreCategoryCard extends StatelessWidget {
  const ExploreCategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: context.colors.grey.withOpacity(.3),
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  stops: const [.0, .4],
                  colors: [
                    context.colors.black.withOpacity(.82),
                    Colors.transparent,
                  ],
                ),
              ),
              child: AppNetworkImage(
                imageUrl: category.coverImageUrl,
              ),
            ),
          ),
        ),
        PositionedDirectional(
          bottom: 16,
          start: 16,
          end: 16,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(20),
                  ),
                  gradient: category.gradientFromColorString,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppText.normal(
                  category.displayName,
                  overflow: TextOverflow.ellipsis,
                  color: context.colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
