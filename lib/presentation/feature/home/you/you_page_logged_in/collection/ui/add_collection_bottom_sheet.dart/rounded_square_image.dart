import 'package:flutter/material.dart';

class RoundedSquareImage extends StatelessWidget {
  const RoundedSquareImage({
    Key? key,
    required this.size,
    required this.imagePath,
  }) : super(key: key);

  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
