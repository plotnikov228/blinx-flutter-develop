import 'package:blinx/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ReelsContent extends StatelessWidget {
  const ReelsContent({
    Key? key,
    this.onPlayIconTap,
  }) : super(key: key);

  final VoidCallback? onPlayIconTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.26,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: onPlayIconTap,
                child: Assets.icons.play.svg(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
