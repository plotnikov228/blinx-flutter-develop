import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ArticleCollectionSortingText extends StatefulWidget {
  const ArticleCollectionSortingText({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  State<ArticleCollectionSortingText> createState() =>
      _ArticleCollectionSortingTextState();
}

class _ArticleCollectionSortingTextState
    extends State<ArticleCollectionSortingText> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _rotationAnimation;

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 0.5).animate(
      _animationController,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isPlaying = !isPlaying;
          isPlaying
              ? _animationController.forward()
              : _animationController.reverse();
        });

        widget.onTap?.call();
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            AppText.body800(
              context.localization.collection.collectionSortingByNameLabel,
              fontSize: 14,
              color: context.colors.black,
            ),
            const SizedBox(width: 12),
            RotationTransition(
              turns: _rotationAnimation,
              child: Assets.icons.arrowUpSmall.svg(),
            ),
          ],
        ),
      ),
    );
  }
}
