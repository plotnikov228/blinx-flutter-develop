import 'package:flutter/material.dart';

class ArticleDetailsIconButton extends StatelessWidget {
  const ArticleDetailsIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.size = 32,
  }) : super(key: key);

  final Widget icon;
  final VoidCallback onPressed;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: IconButton(
        splashRadius: size,
        onPressed: onPressed,
        icon: SizedBox(
          width: size,
          height: size,
          child: icon,
        ),
      ),
    );
  }
}
